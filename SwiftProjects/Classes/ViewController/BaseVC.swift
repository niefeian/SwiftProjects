//
//  BaseVC.swift
//  eBooks
//
//  Created by 聂飞安 on 2020/3/25.
//  Copyright © 2020 赵俊明. All rights reserved.
//

import UIKit
import NFAToolkit
open class BaseVC: UIViewController, IDataPost {
   
    open var postData : AnyObject?
    open var callBack: CBWithParam?
    open var loding = false
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        #if DEBUG
        print("当前类:\(self.classForCoder)")
        #endif
        
        // Do any additional setup after loading the view.
    }
    

    override open func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffset.init(horizontal: -500, vertical: 0), for: UIBarMetrics.default)
           let count = self.navigationController?.viewControllers.count ?? 0
          if count > 1 &&  !(self.tabBarController?.tabBar.isHidden ?? false) {
              self.tabBarController?.tabBar.isHidden = true
          }else if count <= 1 && (self.tabBarController?.tabBar.isHidden ?? false){
              self.tabBarController?.tabBar.isHidden = false
          }
        
       }
    
    override public func viewDidAppear(_ animated: Bool) {
       super.viewDidAppear(animated)
       
        
    }
    
    
    open func postData(_ postData : AnyObject?) {
        self.postData = postData
    }
    
    open func regCallBack(_ cb : @escaping CBWithParam) {
        self.callBack = cb
    }
    
    deinit {
        #if DEBUG
        print("\(self.classForCoder)销毁")
        #endif
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

