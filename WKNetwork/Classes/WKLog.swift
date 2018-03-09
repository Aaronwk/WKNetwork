//
//  WKLog.swift
//  Alamofire
//
//  Created by Aaron_wk on 2018/3/9.
//

import Foundation
import Alamofire

extension WKNetwork {
    
    public class func logForPara(request:WKRequest) {
        print("---------- WKNetwork(Log) -> request -> config ----------")
        print("- U:\(request.url)")
        print("- M:\(request.method)")
        print("- P:\(request.para ?? [:])")
    }
    
    public class func logForResponse(response:DefaultDataResponse) {
        print("---------- WKNetwork(Log) -> request -> result ----------")
        print("- result = \(response)")
    }
}
