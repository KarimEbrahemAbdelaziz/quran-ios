//
//  Madani1440QuranReadingInfoRawData.swift
//
//
//  Created by Mohamed Afifi on 2023-04-08.
//

struct Madani1440QuranReadingInfoRawData: QuranReadingInfoRawData {
    private let classic = Madani1405QuranReadingInfoRawData()

    var arabicBesmAllah: String { classic.arabicBesmAllah }

    var startPageOfSura: [Int] {
        classic.startPageOfSura
    }

    var startSuraOfPage: [Int] {
        [
            1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
            2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
            2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
            3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
            4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
            5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
            6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
            7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9,
            9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10,
            10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
            11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13,
            13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 16,
            16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17,
            17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18,
            19, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21,
            21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22,
            22, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24,
            24, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26,
            27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28,
            28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 30, 30, 30, 30, 30, 30, 31, 31,
            31, 31, 32, 32, 32, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 34, 34, 34,
            34, 34, 34, 34, 35, 35, 35, 35, 35, 35, 36, 36, 36, 36, 36, 37, 37, 37,
            37, 37, 37, 37, 38, 38, 38, 38, 38, 38, 39, 39, 39, 39, 39, 39, 39, 39,
            39, 40, 40, 40, 40, 40, 40, 40, 40, 40, 41, 41, 41, 41, 41, 41, 42, 42,
            42, 42, 42, 42, 42, 43, 43, 43, 43, 43, 43, 44, 44, 44, 45, 45, 45, 45,
            46, 46, 46, 46, 47, 47, 47, 47, 48, 48, 48, 48, 48, 49, 49, 50, 50, 50,
            51, 51, 51, 52, 52, 53, 53, 53, 54, 54, 54, 55, 55, 55, 56, 56, 56, 57,
            57, 57, 57, 58, 58, 58, 58, 59, 59, 59, 60, 60, 60, 61, 62, 62, 63, 64,
            64, 65, 65, 66, 66, 67, 67, 67, 68, 68, 69, 69, 70, 70, 71, 72, 72, 73,
            73, 74, 74, 75, 76, 76, 77, 78, 78, 79, 80, 80, 82, 83, 83, 84, 86, 87,
            88, 89, 90, 92, 94, 96, 98, 100, 103, 106, 109, 112,
        ]
    }

    var startAyahOfPage: [Int] {
        [
            1, 1, 6, 17, 25, 30, 38, 49, 58, 62, 70, 77, 84, 89, 94, 102, 106, 113,
            120, 127, 135, 142, 146, 154, 164, 170, 177, 182, 187, 191, 197, 203, 211,
            216, 220, 225, 231, 234, 238, 246, 249, 253, 257, 260, 265, 270, 275, 282,
            283, 1, 10, 16, 23, 30, 38, 46, 53, 62, 71, 78, 84, 92, 101, 109, 116, 122,
            133, 141, 149, 154, 158, 166, 174, 181, 187, 195, 1, 7, 12, 15, 20, 24, 27,
            34, 38, 45, 52, 60, 66, 75, 80, 87, 92, 95, 102, 106, 114, 122, 128, 135,
            141, 148, 155, 163, 171, 176, 3, 6, 10, 14, 18, 24, 32, 37, 42, 46, 51, 58,
            65, 71, 78, 84, 91, 96, 104, 109, 114, 1, 9, 19, 28, 36, 45, 53, 60, 69, 74,
            82, 91, 95, 102, 111, 119, 125, 131, 138, 143, 147, 152, 158, 1, 12, 23, 31,
            38, 44, 52, 58, 68, 74, 82, 88, 96, 105, 121, 131, 138, 144, 150, 156, 160,
            164, 171, 179, 188, 196, 1, 9, 17, 26, 34, 41, 46, 53, 62, 70, 1, 7, 14, 21,
            27, 32, 37, 41, 48, 55, 62, 69, 73, 80, 87, 94, 100, 107, 112, 118, 123, 1,
            7, 15, 21, 26, 34, 43, 54, 62, 71, 79, 89, 98, 107, 6, 13, 20, 29, 38, 46,
            54, 63, 72, 82, 89, 98, 109, 118, 5, 15, 23, 31, 38, 44, 53, 64, 70, 79, 87,
            96, 104, 1, 6, 14, 19, 29, 35, 43, 6, 11, 19, 25, 34, 43, 1, 16, 32, 52, 71,
            91, 7, 15, 27, 35, 43, 55, 65, 73, 80, 88, 94, 103, 111, 119, 1, 8, 18, 28,
            39, 50, 59, 67, 76, 87, 97, 105, 5, 16, 21, 28, 35, 46, 54, 62, 75, 84, 98,
            1, 12, 26, 39, 52, 65, 77, 96, 13, 38, 52, 65, 77, 88, 99, 114, 126, 1, 11,
            25, 36, 45, 58, 73, 82, 91, 102, 1, 6, 16, 24, 31, 39, 47, 56, 65, 73, 1, 18,
            28, 43, 60, 75, 90, 105, 1, 11, 21, 28, 32, 37, 44, 54, 59, 62, 3, 12, 21, 33,
            44, 56, 68, 1, 20, 40, 61, 84, 112, 137, 160, 184, 207, 1, 14, 23, 36, 45, 56,
            64, 77, 89, 6, 14, 22, 29, 36, 44, 51, 60, 71, 78, 85, 7, 15, 24, 31, 39, 46,
            53, 64, 6, 16, 25, 33, 42, 51, 1, 12, 20, 29, 1, 12, 21, 1, 7, 16, 23, 31, 36,
            44, 51, 55, 63, 1, 8, 15, 23, 32, 40, 49, 4, 12, 19, 31, 39, 45, 13, 28, 41,
            55, 71, 1, 25, 52, 77, 103, 127, 154, 1, 17, 27, 43, 62, 84, 6, 11, 22, 32, 41,
            48, 57, 68, 75, 8, 17, 26, 34, 41, 50, 59, 67, 78, 1, 12, 21, 30, 39, 47, 1, 11,
            16, 23, 32, 45, 52, 11, 23, 34, 48, 61, 74, 1, 19, 40, 1, 14, 23, 33, 6, 15, 21,
            29, 1, 12, 20, 30, 1, 10, 16, 24, 29, 5, 12, 1, 16, 36, 7, 31, 52, 15, 32, 1, 27,
            45, 7, 28, 50, 19, 42, 70, 17, 51, 77, 4, 12, 19, 25, 1, 7, 12, 22, 4, 10, 17, 1,
            6, 12, 6, 1, 9, 5, 1, 10, 1, 6, 1, 8, 1, 13, 27, 17, 43, 9, 36, 11, 41, 11, 1, 14,
            1, 20, 19, 48, 20, 6, 26, 20, 1, 31, 17, 1, 41, 1, 5, 34, 25, 1, 11, 23, 23, 19,
            10, 3, 13, 6, 6, 1, 1, 1, 1,
        ]
    }

    var numberOfAyahsInSura: [Int] {
        classic.numberOfAyahsInSura
    }

    var isMakkiSura: [Bool] {
        classic.isMakkiSura
    }

    var quarters: [(sura: Int, ayah: Int)] {
        classic.quarters
    }
}