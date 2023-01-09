//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Сергей Молодец on 03.01.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    var body: some Scene {

//        Make initional view for the app
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums ) {
                        Task {
                            do {
                                try await ScrumStore.save(scrums: store.scrums)
                            } catch {
                                fatalError("Error saving scrums")
                            }
                        }
                }
            }
            .task {
                do {
                    store.scrums = try await ScrumStore.load()
                } catch {
                    fatalError("Error loading scrums")
                }
                
                

            }
        }
    }
}
