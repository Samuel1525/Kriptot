//
//  KriptotApp.swift
//  Kriptot
//
//  Created by Samuel AYM on 30/07/23.
//

import SwiftUI

@main
struct KriptotApp: App {

    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true) //hides navigation bar
            }
            .environmentObject(vm)
        }
    }
}
