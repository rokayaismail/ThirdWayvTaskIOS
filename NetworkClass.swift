//
//  NetworkClass.swift
//  JavaJobs
//
//  Created by twi on 6/13/19.
//  Copyright © 2019 twi. All rights reserved.
//

import UIKit
import Alamofire
class NetworkClass: NSObject {
    static func getAllData(completion : @escaping (JavaJob)-> Void) {
        let url = "https://jobs.github.com/positions.json?description=java&location=uk"
        
        Alamofire.request(url).responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")  }//        Alamofire.request(url!)
//            .responseJSON(completionHandler: { res in
//                switch res.result {
//                case .failure(let err):
//                        print(err)
//                        completion(nil)
//                        return
//                case .success(let data):
//                    let decoder = JSONDecoder()
//                    let javaJobs = try decoder.decode(JavaJob.self, from: data)
//                    completion(javaJobs)
//                    print(javaJobs)
//                    return
//                }
//            })

    }
    
}
