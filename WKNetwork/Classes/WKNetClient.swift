//
//  WKNetClient.swift
//  Alamofire
//
//  Created by Aaron_wk on 2018/3/9.
//

import UIKit

extension WKNetwork {
    
    /// 网络请求的基本配置
    ///
    /// - Parameters:
    ///   - env: 开发环境
    ///   - proto: 协议
    ///   - host: 域
    ///   - port: 端口
    ///   - pref: 后缀
    ///   - timeOut: 服务器应答时长
    public class func setupWithEnv(env:WKNetDevEnvType,
                                   proto:WKNetEnvProtocolType,
                                   host:String,
                                   port:String,
                                   pref:String,
                                   timeOut:Int) {
        let service = WKNetService.manager
        service.env = env;
        service.proto = proto;
        service.host = host;
        service.port = port;
        service.pref = pref;
        service.timeOut = timeOut;
        
    }
    
    /// 开启日志：默认 false
    ///
    /// - Parameter isLog: log
    public class func isLog(isLog:Bool) {
        WKNetwork.manager.client.isLog = isLog
    }
    
    public class Client:NSObject {
        public var isLog:Bool = false
        
    }
    
    

}
