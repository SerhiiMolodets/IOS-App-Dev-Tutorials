//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Сергей Молодец on 03.01.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
//        Make initional view for the app
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
