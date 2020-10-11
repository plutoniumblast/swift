//
//  File.swift
//  SwiftUI-SingleView
//
//  Created by Manav Seksaria on 05/10/20.
//  Copyright © 2020 Nukes Foundation. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController{
    override func viewDidLoad() {
        let jsonUrlString = "http://192.168.0.106:3000/api/";
        getData(from: jsonUrlString);
    }

    private func getData(from inURL: String){
        
        guard let url = URL(string: inURL) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
            
            guard let data = data, error == nil else {
                print("Unable to get request")
                return
            }
            
            var result: AllLists?
            do{
                result = try JSONDecoder().decode(AllLists.self, from: data)
            }
            catch {
                print("Something failed in conversion \(error.localizedDescription)")
            }
            
            guard let json = result else {
                return
            }
            
            print(json.Lists[0].id)
            
        })
        task.resume()
    }
}

struct AllLists: Codable {
    var Lists: [everyList]
}
struct everyList: Codable {
    let id: Int
    let file: String
    var Tags: [String]
    var Data: [oneList]
}
struct oneList: Codable{
    let id: String
    let title: String
    let details: String
    let type: String
    let completed: Bool
    let `in`: Int
    let out: Int
}
