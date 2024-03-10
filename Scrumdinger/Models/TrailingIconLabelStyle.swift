//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Catalina Hermoso on 10/03/2024.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title //a labelStyleConfiguration
            configuration.icon //a labelStyleConfiguration
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle { //calling the LabelStyle static property using leading-dot syntax
    static var trailingIcon: Self { Self() }
}
