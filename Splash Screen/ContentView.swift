//
//  ContentView.swift
//  Splash Screen
//
//  Created by Mohammed Mubashir on 23/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Text("Home Screen").foregroundColor(.white).font(.system(size: 30)).bold().padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
