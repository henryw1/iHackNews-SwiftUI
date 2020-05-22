//
//  PostData.swift
//  iHackNews
//
//  Created by Henrie Wainaina on 22/05/2020.
//  Copyright © 2020 Henrie Wainaina. All rights reserved.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String{
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
