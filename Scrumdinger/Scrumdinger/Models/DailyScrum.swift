//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Сергей Молодец on 03.01.2023.
//

import Foundation

struct DailyScrum: Identifiable {
    let id = UUID()
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    
    [
        DailyScrum(title: "Desing", attendees: ["Jack", "John", "Konstantine", "Viktor"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "UIKit Dev", attendees: ["Mister", "Sinister", "Xena", "Wolf"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "SwiftUI Dev", attendees: ["Margo", "Ivan", "Nick", "Lucas"], lengthInMinutes: 4, theme: .poppy)
    ]
}
