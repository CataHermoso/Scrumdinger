//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Catalina Hermoso on 10/03/2024.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID //to work with user-generated content so each scrum can have its own id
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    //adding an init for the identifiable protocol (not optional)
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum { //dummy data
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Ariel", "Martin", "Simon", "Marta"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Bruno", "Elian", "Chachi", "Catalina", "Dim"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Tomas", "Iara", "Andy", "Camila", "Sofia", "Carlos", "Axel", "Alex"], lengthInMinutes: 5, theme: .poppy)
    ]
}
