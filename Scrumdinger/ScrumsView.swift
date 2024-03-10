//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Catalina Hermoso on 10/03/2024.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack { //set up the navigation
            List(scrums) { scrum in //this list needs to return a view
                NavigationLink(destination: Text(scrum.title)){ //presents a sigle view in the nav hierarchy when a user interacts with the element. each row pushes to an ind destination
                    CardView(scrum:scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
