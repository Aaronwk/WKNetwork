//
//  WKNetwork.swift
//  Alamofire
//
//  Created by Aaron_wk on 2018/3/9.
//

//项目地址 :https://github.com/Aaronwk/WKNetwork.git

// 依赖于Alamofire进行封装的网络请求框架
// One: 配置请求相关(WKNetService)
//      WKNetwork.setupWithEnv(env: 开发环境,
//                           proto: 网络协议,
//                            host: 域,
//                            port: 端口,
//                            pref: 后缀,
//                         timeOut: 服务器应答时长)
//
// Tow: 请求 request(_ config:(WKRequest)->(),suc: ((Any?)->())?, fail: ((Error)->())?)
//
// Three: 应答 dataRequest
//
// Four:日志 WKLog
//
// ******************** 共四部分组成 **********************8


import UIKit
import Alamofire

open class WKNetwork: NSObject {
    
    static var manager : WKNetwork {
        struct Static {
            static let instance : WKNetwork = WKNetwork()
        }
        return Static.instance
    }
    
    public var client:Client = Client.init()
   
   @objc open class func request(_ config:(WKRequest)->(),suc: ((Any?)->())?, fail: ((Error)->())?) {
        
        let request = WKRequest.init()
        config(request)
        
        // MARK: - 发起请求
        let dataRequest = Alamofire.request(request.url, method:request.method , parameters: request.para, encoding: URLEncoding.default, headers: nil)
        
        // MARK: - 处理请求日志
        if WKNetwork.manager.client.isLog {
           self.logForPara(request: request)
        }
        
        dataRequest.response { (response) in
            // MARK: - 处理返回日志
            if WKNetwork.manager.client.isLog {
                self.logForResponse(response: response)
            }
            
            
            // MARK: - 处理返回数据
            switch request.responseType {
            case .json:
                dataRequest.responseJSON(completionHandler: { (response) in
                    if let error = response.error {
                        if let f = fail {
                            f(error)
                        }
                    }else{
                        if let r = response.result.value {
                            if let s = suc {
                                s(r)
                            }
                        }
                    }
                })
            case.data:
                dataRequest.responseData(completionHandler: { (data) in
                    if let error = data.error {
                        if let f = fail {
                            f(error)
                        }
                    }else{
                        if let r = data.data {
                            if let s = suc {
                                s(r)
                            }
                        }
                    }
                })
            case.text:
                dataRequest.responseString(completionHandler: { (text) in
                    if let error = text.error {
                        if let f = fail {
                            f(error)
                        }
                    }else{
                        if let r = text.data {
                            if let s = suc {
                                let str = NSString.init(data: r, encoding: String.Encoding.utf8.rawValue)
                                s(str)
                            }
                        }
                    }
                })
            }
        }
    }
}
