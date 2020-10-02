//
//  NetworkManager.swift
//  H4XOR
//
//  Created by Gnanapriya C on 06/04/20.
//  Copyright © 2020 Gnanapriya C. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    //to get notifies all listeners
    @Published var post = [Posts] ()
    func fetchData()
    {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    //struct of model-Result.self
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.post = results.hits
                            }
                            
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
        
    }
}
