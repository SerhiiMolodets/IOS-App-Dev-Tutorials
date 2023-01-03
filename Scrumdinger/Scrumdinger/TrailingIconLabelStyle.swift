//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Сергей Молодец on 03.01.2023.
//

import SwiftUI

struct TrailinigIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
    
}

extension LabelStyle where Self == TrailinigIconLabelStyle {
    static var trailingicon: Self { Self() }
}
