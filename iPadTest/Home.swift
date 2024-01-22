//
//  Home.swift
//  iPadTest
//
//  Created by Daniel Moya on 22/1/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            Text("Start of the app")
                .navigationBarTitle("Home")
                .navigationBarItems(trailing:
                                        NavigationLink(
                                            destination: SecondView()
                                        ){
                                            Image(systemName: "plus")
                                        })
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

