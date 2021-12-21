//
//  SPHomeUI_Extension.swift
//  SPHomeUIExtension
//
//  Created by flowerflower on 2021/12/17.
//

import Foundation

import SPMediator


public extension SPMediator {
    

    @objc func SPHomeUI_homeViewController() -> UIViewController? {
        if let controller = self.performTarget_SPHomeUI(action: "homeViewController") {
            return controller
        }
        return nil
    }

    
}

/// Private
extension SPMediator {
    
    
    /// 通用调用方法
    ///
    /// - Parameters:
    ///   - action: 方法
    ///   - param: 参数
    ///   - shouldCacheTarget: 是否缓存 Target
    func performTarget_SPHomeUI(action: String,
                                     param: Dictionary<AnyHashable, Any>? = nil,
                                     shouldCacheTarget: Bool? = false) -> UIViewController? {
        

        let targetName = "SPHomeUI"
        var paramDic: Dictionary<AnyHashable, Any> = param ?? [:]
        paramDic[kSPMediatorParamsKeySwiftTargetModuleName] = targetName
        if let controller = self.performTarget(targetName,
                                               action: action,
                                               params: paramDic,
                                               shouldCacheTarget: false) as? UIViewController {
            return controller
        }
        return nil
    }

}

