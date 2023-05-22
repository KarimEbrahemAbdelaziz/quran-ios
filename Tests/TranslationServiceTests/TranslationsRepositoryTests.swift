//
//  TranslationsRepositoryTests.swift
//
//
//  Created by Mohamed Afifi on 2023-05-21.
//

@testable import BatchDownloader
import SystemDependenciesFake
import TestUtilities
@testable import TranslationService
import XCTest

class TranslationsRepositoryTests: XCTestCase {
    private var persistence: ActiveTranslationsPersistence {
        localTranslationsFake.persistence
    }

    private var retriever: LocalTranslationsRetriever {
        localTranslationsFake.retriever
    }

    private var session: NetworkSessionFake!
    private var service: TranslationsRepository!
    private var localTranslationsFake: LocalTranslationsFake!

    private let baseURL = URL(validURL: "http://example.com")

    private let translations = [
        TranslationTestData.khanTranslation,
        TranslationTestData.sahihTranslation,
    ]

    override func setUp() {
        super.setUp()
        session = NetworkSessionFake(queue: .main, delegate: nil)
        localTranslationsFake = LocalTranslationsFake(useFactory: true)
        service = TranslationsRepository(
            databasesPath: LocalTranslationsFake.databasesPath,
            networkManager: NetworkManager(session: session, baseURL: baseURL)
        )
    }

    override func tearDown() {
        super.tearDown()
        localTranslationsFake.tearDown()
    }

    func test_firstTimeDownload() async throws {
        try nextResponse(TranslationsResponse(
            data: translations.map { TranslationResponse($0) }))

        try wait(for: service.downloadAndSyncTranslations())

        let localResults = try await retriever.getLocalTranslations()
        let expectedTranslations = translations.map {
            expectedTranslation($0, installedVersion: nil)
        }
        XCTAssertEqual(localResults, expectedTranslations)
    }

    func test_updatedVersion() async throws {
        let translation = translations[0]
        let updatedTranslation = Translation(
            id: translation.id,
            displayName: translation.displayName,
            translator: translation.translator,
            translatorForeign: translation.translatorForeign,
            fileURL: translation.fileURL,
            fileName: translation.fileName,
            languageCode: translation.languageCode,
            version: 1000
        )

        try nextResponse(TranslationsResponse(data: [TranslationResponse(translation)]))
        let result = service.downloadAndSyncTranslations()
        try wait(for: result)

        try nextResponse(TranslationsResponse(data: [TranslationResponse(updatedTranslation)]))
        try wait(for: service.downloadAndSyncTranslations())

        let localResults = try await retriever.getLocalTranslations()
        XCTAssertEqual(localResults, [updatedTranslation])
    }

    // TODO: This crashes the app, we should fix it.
    func DISABLED_test_updatedFileName() async throws {
        let translation = translations[0]
        let updatedTranslation = Translation(
            id: translation.id,
            displayName: translation.displayName,
            translator: translation.translator,
            translatorForeign: translation.translatorForeign,
            fileURL: translation.fileURL,
            fileName: "updatedFileName.db",
            languageCode: translation.languageCode,
            version: translation.version
        )

        try nextResponse(TranslationsResponse(data: [TranslationResponse(translation)]))
        let result = service.downloadAndSyncTranslations()
        try wait(for: result)

        try nextResponse(TranslationsResponse(data: [TranslationResponse(updatedTranslation)]))
        try wait(for: service.downloadAndSyncTranslations())

        let localResults = try await retriever.getLocalTranslations()
        XCTAssertEqual(localResults, [updatedTranslation])
    }

    // MARK: - Helpers

    private func nextResponse(_ response: TranslationsResponse) throws {
        let encoder = JSONEncoder()
        let parameters = [("v", "5")]
        let request = NetworkManager.request(baseURL: baseURL,
                                             path: DefaultTranslationNetworkManager.path,
                                             parameters: parameters)
        session.dataResults[request.url!] = .success(try encoder.encode(response))
    }

    private func expectedTranslation(_ translation: Translation, installedVersion: Int?) -> Translation {
        var translation = translation
        translation.installedVersion = installedVersion
        return translation
    }
}

private extension TranslationResponse {
    init(_ translation: Translation) {
        self.init(id: translation.id,
                  displayName: translation.displayName,
                  translator: translation.translator,
                  translatorForeign: translation.translatorForeign,
                  fileUrl: translation.fileURL,
                  fileName: translation.fileName,
                  languageCode: translation.languageCode,
                  currentVersion: translation.version)
    }
}
