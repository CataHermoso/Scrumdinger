//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Catalina Hermoso on 08/03/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup { //fills the entire device's screen
            ScrumsView(scrums: DailyScrum.sampleData) //to set this view as the app's root one
        }
    }
}
