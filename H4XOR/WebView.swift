//
//  WebView.swift
//  H4XOR
//
//  Created by Gnanapriya C on 08/04/20.
//  Copyright © 2020 Gnanapriya C. All rights reserved.
//

import WebKit
import SwiftUI

//swift uiview respresnts uikit view
struct WebView:UIViewRepresentable {
    let url: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = url {
            if let url = URL(string: safeString) {
               let urlRequest = URLRequest(url: url)
                uiView.load(urlRequest)
            }
        }
    }
}

