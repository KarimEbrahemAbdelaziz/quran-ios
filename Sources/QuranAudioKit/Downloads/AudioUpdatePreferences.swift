//
//  AudioUpdatePreferences.swift
//
//
//  Created by Mohamed Afifi on 2021-12-14.
//

import Foundation
import Preferences

protocol AudioUpdatePreferences: AnyObject {
    var lastRevision: Int { get set }
    var lastChecked: Date? { get set }
}

final class DefaultAudioUpdatePreferences: AudioUpdatePreferences {
    private static let lastRevision = PreferenceKey<Int>(key: "audio-update.last-revision", defaultValue: 0)
    private static let lastChecked = PreferenceKey<Date?>(key: "audio-update.last-checked", defaultValue: nil)

    @Preference(lastRevision) var lastRevision: Int
    @Preference(lastChecked) var lastChecked: Date?
}
