//
//  CostargramApp.swift
//  Costargram
//
//  Created by Coby Kim on 2023/02/20.
//

import SwiftUI
import Firebase

@main
struct CostargramApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
