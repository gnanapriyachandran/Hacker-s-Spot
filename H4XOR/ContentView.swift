//
//  ContentView.swift
//  H4XOR
//
//  Created by Gnanapriya C on 06/04/20.
//  Copyright © 2020 Gnanapriya C. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //listener
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            //trailing closure
            List(networkManager.post) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
        .navigationBarTitle("H4XOR")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

