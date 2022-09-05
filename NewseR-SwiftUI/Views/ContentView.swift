//
//  ContentView.swift
//  NewseR-SwiftUI
//
//  Created by Hleb Tsahoika on 29.08.22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManger()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("NEWSER")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}


