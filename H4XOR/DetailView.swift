//
//  DetailView.swift
//  H4XOR
//
//  Created by Gnanapriya C on 08/04/20.
//  Copyright © 2020 Gnanapriya C. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    let url:String?
    var body: some View {
        WebView(url: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
