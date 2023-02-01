//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Сергей Молодец on 01.02.2023.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History {
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map { $0.name })
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var history: History {
        History(attendees: [DailyScrum.Attendee(name: "John"),
                            DailyScrum.Attendee(name: "Konstantine"),
                            DailyScrum.Attendee(name: "Wick")],
        lengthInMinutes: 10,
        transcript: "Konstantine, I want to say thank you. Because I live in Taiwan and the USA, I joined the North Calgary ESL Conversation Group online last year around October until now...")
    }
    
    static var previews: some View {
        HistoryView(history: history)
    }
}



