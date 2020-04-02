//
//  APIConfig.swift
//  SwiftProjects
//
//  Created by 聂飞安 on 2020/4/2.
//

import UIKit
import AutoData
import NFANetwork
open class APIConfig: NSObject {
   
    public class func setConfig(){
        Api.DebugHOST = ""
        Api.DebugWEB_HOST = ""

        Api.bodyType = "feian.com"

        isDebug = true
        APIConfig.reloadConfig()
        VersionControl.update()
        ReachabilityNotificationView.stareNetNotication()
    }

   public class func reloadConfig(){

        var parameters: Dictionary<String, String> = Dictionary()

        parameters["fd_serverversion"] = "v1"
        parameters["g_device_os"] = "3"

        Api.commonPara = parameters

    }
}
