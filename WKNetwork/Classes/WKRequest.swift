//
//  WKRequest.swift
//  Alamofire
//
//  Created by Aaron_wk on 2018/3/9.
//

import Foundation
import Alamofire

public class WKRequest:NSObject {
    
    public var method:HTTPMethod = .post
    public var responseType:WKResponseType = .json
    public var para:Dictionary<String, Any>?
    public var path:String?
    private var _url:String!
    public var url:String {
        set {
            _url = newValue
        }
        get {
            let service = WKNetService.manager
            if _url == nil {
                _url = ""
                switch service.proto {
                case .http:
                    _url?.append("http://")
                case .https:
                    _url?.append("https://")
                }
                _url.append(service.host ?? "")
                _url.append(service.port ?? "")
                _url.append(path ?? "")
                _url.append(service.pref ?? "")

            }
            return _url!
        }
    }
}



