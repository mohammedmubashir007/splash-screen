//
//  SplashScreen.swift
//  Splash Screen
//
//  Created by Mohammed Mubashir on 23/02/23.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var isActive:Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            ContentView()
        }else {
            VStack{
                Image("mascot")
                Text("Mohammed Mubashir").font(.system(size: 30)).foregroundColor(.black).opacity(0.7)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.0)){
                    self.size = 1.1
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation{
                        isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
