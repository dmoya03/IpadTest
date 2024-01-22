//
//  ContentView.swift
//  iPadTest
//
//  Created by Daniel Moya on 22/1/24.
//

import SwiftUI

struct ContentView: View {
    var device = UIDevice.current.userInterfaceIdiom
    var ipadSimulator = UIDevice.current.model.hasPrefix("iPad")
    @State var step = false
    
    var body: some View {
        NavigationView {
            VStack {
                    if device == .phone && ipadSimulator {
                        Text("We are in iPad simulation mode")
                    } else if device == .pad {
                        Text("We are on the iPad")
                    } else {
                        Text("We are on the Iphone")
                    }
                    Button(action: {
                        step.toggle()
                    }){
                        Text("Start")
                    }.sheet(isPresented: $step, content: {
                        Home()
                    })
                    
            }
            .navigationBarTitle("Welcome")
            .navigationBarItems(trailing:
                                    goToHome())
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct goToHome: View {
    
    var body: some View{
        NavigationLink(
            destination: Home()
        ){
            Image(systemName: "plus")
        }
    }
}


#Preview {
    ContentView()
}
