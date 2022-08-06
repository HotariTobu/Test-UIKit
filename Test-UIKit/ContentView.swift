//
//  ContentView.swift
//  Test-UIKit
//
//  Created by HotariTobu on 2021/09/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LazyVStack {
                Group {
                    /*
                    NavigationLink("") {
                        ()
                    }
                     */
                    NavigationLink("TestView") {
                        TestView()
                    }
                    NavigationLink("SectionedTableView") {
                        SectionedTableView()
                    }
                    NavigationLink("PageControllView") {
                        PageControllView()
                    }
                    NavigationLink("PulPulButtonView") {
                        PulPulButtonView()
                    }
                    NavigationLink("MoveViewDynamicallyView") {
                        MoveViewDynamicallyView()
                    }
                    NavigationLink("SheetTransitionView") {
                        SheetTransitionView()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
