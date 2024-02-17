//
//  ContentView.swift
//  CustomSwipeAction
//
//  Created by Shah Md Imran Hossain on 17/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Shah Md Imran Hossain")
                .swipeActions {
                    Button(role: .destructive) {
                        print("Deleting")
                    } label: {
                        Label("Delete", systemImage: "minus.circle")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button {
                        print("pinning")
                    } label: {
                        Label("Pin", systemImage: "pin")
                    }
                    .tint(.orange)
                }
        }
    }
}

#Preview {
    ContentView()
}
