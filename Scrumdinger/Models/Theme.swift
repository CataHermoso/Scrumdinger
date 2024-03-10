//
//  Theme.swift
//  Scrumdinger
//
//  Created by Catalina Hermoso on 10/03/2024.
//

import SwiftUI //to add colors from the swiftUI framework

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavander
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavander, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue) //initializes a color from the asset catalog
    }
}


