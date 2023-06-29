//
//  SwiftUIView.swift
//
//
//  Created by Afifi, Mohamed on 9/5/21.
//

import Localization
import SwiftUI
import UIx

struct MoreMenuWordPointerType: View {
    let type: MoreMenu.TranslationPointerType

    var body: some View {
        SimpleListItem(
            title: l("menu.pointer.select_translation"),
            subtitle: typeText,
            showDisclosureIndicator: true
        )
        .padding()
    }

    var typeText: String {
        switch type {
        case .translation:
            return l("translationTextType")
        case .transliteration:
            return l("transliterationTextType")
        }
    }
}

struct MoreMenuWordPointerType_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MoreMenuWordPointerType(type: .translation)
            Divider()
            MoreMenuWordPointerType(type: .transliteration)
        }
    }
}