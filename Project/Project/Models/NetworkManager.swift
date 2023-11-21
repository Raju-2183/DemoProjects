//
//  NetworkManager.swift
//  Project
//
//  Created by Nagaraju Yadav on 21/11/23.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Branch]()

    func fetchData() {
        if let url = URL(string: "https://api.msigma.in/btech/v2/branches") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.branches
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
