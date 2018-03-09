//
//  WKEnum.swift
//  Alamofire
//
//  Created by Aaron_wk on 2018/3/9.
//

import Foundation


/// 当前项目开发环境
///
/// - dev: 开发环境
/// - test: 测试环境
/// - release: 发布环境
public enum WKNetDevEnvType:Int {
    case dev = 1
    case test
    case release
}

/// 请求协议
///
/// - http: HTTP
/// - https: HTTPS
public enum WKNetEnvProtocolType:Int {
    case http = 1
    case https
}

/// 预设返回数据格式
///
/// - json: JSON
/// - data: DATA
/// - text: TEXT
public enum WKResponseType:Int {
    case json = 1
    case data
    case text
}


