//
//  ArticleViewModel.swift
//  Jet2Travel
//
//  Created by Tushar Chavan on 15/06/20.
//  Copyright © 2020 Root. All rights reserved.
//

import Foundation
import CoreData

class ArticleViewModel {

    
    private var serviceHandler = ServiceHandler()
    private var articleList = [AnyObject]()
    
    func fetchArticleData(completion: @escaping () -> ()) {
        
        serviceHandler.getArticalData{ [weak self] (result) in
            switch result {
            case .success(let articleArray):
                print(articleArray)
            case .failure(let error):
                print("Error processing json data: \(error)")
            }
        }
    }

}
