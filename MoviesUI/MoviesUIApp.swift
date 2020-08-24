//
//  MoviesUIApp.swift
//  MoviesUI
//
//  Created by Wesley Brito on 24/08/20.
//

import SwiftUI
import Firebase

@main
struct MoviesUIApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        debugPrint("Setting up Firebase")
        FirebaseApp.configure()
        return true
    }
}
