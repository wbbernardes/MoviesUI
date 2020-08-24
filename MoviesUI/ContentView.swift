//
//  ContentView.swift
//  MoviesUI
//
//  Created by Wesley Brito on 24/08/20.
//

import SwiftUI

struct ContentView: View {
    @State var isActive = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: Text("Destination").navigationBarBackButtonHidden(true),
                    isActive: $isActive) {
                    LaunchLottieView(filename: "33-video-cam") { _ in
                        isActive = true
                    }.frame(width: 200, height: 200, alignment: .center)
                }
            }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
