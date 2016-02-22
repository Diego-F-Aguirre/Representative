//
//  NetworkController .swift
//  Representatives
//
//  Created by Diego Aguirre on 2/18/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class NetworkController {
    
    static let kBaseURLString: String = "http://whoismyrepresentative.com/"
    
    static func searchURLByState(state: String) -> NSURL {
        
        return NSURL(string: NetworkController.kBaseURLString + "/getall_reps_bystate.php?state=" + state + "&output=json")!
        
    }
    
    static func dataAtURL(url: NSURL, completion:(resultData: NSData?) -> Void) {
        
        let session = NSURLSession.sharedSession()
        
        let dataTask = session.dataTaskWithURL(url) { (data, _, error) -> Void in
            guard let data = data else {
                print(error?.localizedDescription)
                completion(resultData: nil)
                return
            }
            
            completion(resultData: data)
        }
        
        dataTask.resume()
    }
}
