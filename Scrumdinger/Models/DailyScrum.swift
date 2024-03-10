//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Catalina Hermoso on 10/03/2024.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum { //dummy data
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Ariel", "Martin", "Simon", "Marta"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Bruno", "Elian", "Chachi", "Catalina", "Dim"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Tomas", "Iara", "Andy", "Camila", "Sofia", "Carlos", "Axel", "Alex"], lengthInMinutes: 5, theme: .poppy)
    ]
}
