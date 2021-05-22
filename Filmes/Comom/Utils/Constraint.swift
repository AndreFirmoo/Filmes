//
//  Constraint.swift
//  Filmes
//
//  Created by ANDRE FIRMO on 15/05/21.
//
import UIKit

enum Localization{
    
    static let homeTitle = NSLocalizedString("Home", comment: "")
    static let peopleSearch = NSLocalizedString("People Search", comment: "")
    static let favorite = NSLocalizedString("favorites", comment: "")
    static let profile = NSLocalizedString("Profile", comment: "")
    
    enum Dimens {
        static let extraSmall: CGFloat = 4
        static let small: CGFloat = 8
        static let mediumSmall: CGFloat = 12
        static let medium: CGFloat = 16
        static let mediumLarge: CGFloat = 24
        static let large: CGFloat = 32
        static let extraLarge: CGFloat = 48
        
        static let heightTextField: CGFloat = 34
        static let heightMainButton: CGFloat = 45
        static let heightSecondayButton: CGFloat = 32
        static let heightMainButtonBordered: CGFloat = 43
        
        static let topModalMargin: CGFloat = 60
        static let topTitleMargin: CGFloat = 20
        static let heightSelectionView: CGFloat = 32
        
        static let heightRegisterScreen: CGFloat = 100
    }

    enum Color {
        static let alphaLoading: CGFloat = 0.7
    }
}

