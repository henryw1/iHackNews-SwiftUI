//
//  NetworkManager.swift
//  iHackNews
//
//  Created by Henrie Wainaina on 22/05/2020.
//  Copyright © 2020 Henrie Wainaina. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    func fetchDate() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results =  try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                 self.posts = results.hits
                            }
                           
                        }catch{
                            print("Error::::\(error)")
                        }
                        
                    }
                   
                }
            }
            task.resume()
        }
    }
}
