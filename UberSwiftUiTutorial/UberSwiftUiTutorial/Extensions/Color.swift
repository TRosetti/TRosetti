//
//  Color.swift
//  UberSwiftUiTutorial
//
//  Created by Thiago Rosetti Miranda on 12/18/22.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme{
    let backgroungColor = Color("BackgroundColor")
    let secondaryBackgroundColor = Color("SecondaryBackgroundColor")
    let primaryTextColor = Color("PrimaryTextColor")
}
