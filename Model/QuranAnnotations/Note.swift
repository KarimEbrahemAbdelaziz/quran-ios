//
//  Note.swift
//  Quran
//
//  Created by Mohamed Afifi on 10/29/16.
//

import Foundation
import QuranKit

public struct Note: Equatable {
    public let verses: Set<AyahNumber>
    public let modifiedDate: Date
    public let color: Color
    public let note: String?
    public init(verses: Set<AyahNumber>, modifiedDate: Date, note: String?, color: Color) {
        self.verses = verses
        self.modifiedDate = modifiedDate
        self.color = color
        self.note = note
    }

    public var firstVerse: AyahNumber {
        verses.sorted()[0]
    }

    public enum Color: Int {
        case red
        case green
        case blue
        case yellow
        case purple
    }
}
