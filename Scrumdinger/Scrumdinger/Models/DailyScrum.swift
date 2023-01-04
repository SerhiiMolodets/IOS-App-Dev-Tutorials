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
    var attendees: [Atendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.title = title
        self.attendees = attendees.map { Atendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Atendee: Identifiable {
        let id = UUID()
        var name: String
    }
    
    struct Data {
        var title: String = ""
        var attendees: [Atendee] = []
        var lengthInMinutes: Double = 0.0
        var theme: Theme = .seafoam
    }
    var data: Data {
        Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), theme: theme)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    
    [
        DailyScrum(title: "Desing", attendees: ["Jack", "John", "Konstantine", "Viktor"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "UIKit Dev", attendees: ["Mister", "Sinister", "Xena", "Wolf"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "SwiftUI Dev", attendees: ["Margo", "Ivan", "Nick", "Lucas"], lengthInMinutes: 4, theme: .poppy)
    ]
}
