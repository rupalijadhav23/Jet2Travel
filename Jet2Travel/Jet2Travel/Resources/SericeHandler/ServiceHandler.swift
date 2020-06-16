//
//  ServiceHandler.swift
//  Jet2Travel
//
//  Created by Tushar Chavan on 15/06/20.
//  Copyright © 2020 Root. All rights reserved.
//


import Foundation

class ServiceHandler {
    
    private var dataTask: URLSessionDataTask?
    let defaultSession = URLSession(configuration: .default)
    
    func getArticalData(completion: @escaping (Result<[AnyObject], Error>) -> Void) {
        
        let articleURL = "https://5e99a9b1bc561b0016af3540.mockapi.io/jet2/api/v1/blogs?page=1&limit=10"
        
        guard let url = URL(string: articleURL) else {return}
        
        dataTask = URLSession.shared.dataTask(with: url){ (data, response, error) in
            
            if let error = error{
                completion(.failure(error))
                return
            }
            
            guard let response = response as? HTTPURLResponse else{
                return
            }
            print(response.statusCode)
            
            guard let data = data else{
                return
            }
            do{
                if let jsonData = try JSONSerialization.jsonObject(with: data,
                    options: [.mutableContainers]) as? [AnyObject]
                {
                    DispatchQueue.main.async {
                          completion(.success(jsonData))
                }}
                
            }catch let error {
                completion (.failure(error))
            }
        }
        dataTask?.resume()
    }
    
}
