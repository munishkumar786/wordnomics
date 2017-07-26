//
//  GlobalFunctions.swift
//  Wordnomics
//
//  Created by Sunny Kumar on 03/07/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit
import Alamofire

var BaseURL = "http://omninos.com/wordnomics/api/user/"
class GlobalFunctions: NSObject {
    //Alamofire Web Service
    func alamofire_withMethod(_ method: String, parameters : NSDictionary, completion: @escaping (_ result : AnyObject) -> ()) {
        Alamofire.request("\(BaseURL)\(method)", method: .post ,parameters: parameters as? Parameters).responseJSON { response in
            
            if let JSON = response.result.value {
                if let _ = JSON as? NSArray{
                    let result : NSArray = (JSON as? NSArray)!
                    completion(result)
                }else if let _ = JSON as? NSDictionary{
                    let result : NSDictionary = (JSON as? NSDictionary)!
                    completion(result)
                }
            }else{
                print("no data")
            }
        }
    }
    
}
