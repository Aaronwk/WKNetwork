//
//  WKNetService.swift
//  Alamofire
//
//  Created by Aaron_wk on 2018/3/9.
//

import Foundation

public class WKNetService:NSObject {
    
    static var manager : WKNetService {
        struct Static {
            static let instance : WKNetService = WKNetService()
        }
        return Static.instance
    }
    public var env:WKNetDevEnvType = .dev
    public var proto:WKNetEnvProtocolType = .http
    public var timeOut:Int = 60
    public var host:String?
    public var port:String?
    public var pref:String?
    
}
