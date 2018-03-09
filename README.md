# WKNetwork


[![CI Status](http://img.shields.io/travis/objective/WKNetwork.svg?style=flat)](https://travis-ci.org/objective/WKNetwork)
[![Version](https://img.shields.io/cocoapods/v/WKNetwork.svg?style=flat)](http://cocoapods.org/pods/WKNetwork)
[![License](https://img.shields.io/cocoapods/l/WKNetwork.svg?style=flat)](http://cocoapods.org/pods/WKNetwork)
[![Platform](https://img.shields.io/cocoapods/p/WKNetwork.svg?style=flat)](http://cocoapods.org/pods/WKNetwork)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

WKNetwork is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WKNetwork'
```

## Author

王凯, wangkai@ctdcn.com

## License

WKNetwork is available under the MIT license. See the LICENSE file for more info.

一个Alamofire的Swift版本的网络请求框架

## 使用
###Appdelegate.swift 调用
```
WKNetwork.setupWithEnv(env: .test,
						 proto: .http,
						  host: "0.0.0.0",
						  port: ":8080/",
						  pref: ".dev",
					   timeOut: 90)
// 日志
WKNetwork.isLog(isLog: false)

```
###请求入口
```
WKNetwork.request({ (r) in
	r.path = ""
	r.responseType = .text
}, suc: { (s) in
	print(s ?? "")
}) { (e) in

}
```

