//
//  FruitsApp.swift
//  Fruits
//
//  Created by Joseph on 7/8/23.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}
