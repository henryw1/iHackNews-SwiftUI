//
//  DetailView.swift
//  iHackNews
//
//  Created by Henrie Wainaina on 22/05/2020.
//  Copyright © 2020 Henrie Wainaina. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"https://www.google.com")
    }
}


