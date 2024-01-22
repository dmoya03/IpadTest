//
//  SecondView.swift
//  iPadTest
//
//  Created by Daniel Moya on 22/1/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationView{
            Text("Second screen")
                .navigationBarTitle("Second")
                .navigationBarItems(trailing:
                                        NavigationLink(
                                            destination: ContentView()
                                        ){
                                            Image(systemName: "plus")
                                        })
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
