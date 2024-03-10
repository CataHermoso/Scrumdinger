//
//  CardView.swift
//  Scrumdinger
//
//  Created by Catalina Hermoso on 10/03/2024.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader) //reads the scrum title followed by "heading"
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon) //defined in TrailingIconStyle file
            }
            .font(.caption)
        }
        .padding() //to bring the content in from the edges
        .foregroundColor(scrum.theme.accentColor) //to make the text legible in dark mode as set in accentColor in Theme
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0] //passing dummy data
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
