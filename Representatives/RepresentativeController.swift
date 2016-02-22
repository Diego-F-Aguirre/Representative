//
//  RepresentativeController.swift
//  Representatives
//
//  Created by Diego Aguirre on 2/18/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


class RepresentativeController {
    
    static func representativesBySearch(state: String, completion:(result: [Representative]) -> Void) {
        
        let url = NetworkController.searchURLByState(state)
        
        NetworkController.dataAtURL(url) { (resultData) -> Void in
            guard let repData = resultData else {
                print("NO DATA RETURNED")
                completion(result: [])
                return
            }
            
            do {
                
                let resultDictionary = try NSJSONSerialization.JSONObjectWithData(repData, options: NSJSONReadingOptions.AllowFragments) as! [String : AnyObject]
                
                let repDictionaries = resultDictionary[Representative.kResults] as? [[String : String]]
                
                var arrayOfRepObjects: [Representative] = []
                
                for dictionary in repDictionaries! {
                    
                    let rep = Representative(jsonDictionary: dictionary)
                    arrayOfRepObjects.append(rep)
                }
                
                completion(result: arrayOfRepObjects)
                
            } catch {
                print("Error serializing JSON")
                completion(result: [])
                return
            }
        }
    }
    
}


























