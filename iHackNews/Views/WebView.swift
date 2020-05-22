//
//  WebView.swift
//  iHackNews
//
//  Created by Henrie Wainaina on 22/05/2020.
//  Copyright © 2020 Henrie Wainaina. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
         return WKWebView()
    }
    
    let urlString: String?
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
