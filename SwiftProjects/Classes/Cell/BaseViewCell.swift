//
//  BaseViewCell.swift
//  cloudclass
//
//  Created by jacty on 15/7/23.
//  Copyright © 2015年 tizi. All rights reserved.
//

import Foundation
import UIKit
import NFAToolkit

class BaseViewCell: AbsTableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var content: UILabel!
    
    @IBOutlet weak var backIcon: UIImageView!
    @IBOutlet weak var switchBtn: UISwitch!
     
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var promptView: UIView! // 小红点,aboutvc用
    
    @IBOutlet weak var contentRightConstraint: NSLayoutConstraint!
    // 内容的右边约束
    @IBOutlet weak var contentTrailConstraint: NSLayoutConstraint!
    // 开关的回调事件
    fileprivate var switchCallBack: ((Bool) -> Void)?
    
    fileprivate var btnCallBack: CB? 
    
    func regSwitchAction(isOn : Bool = true, fun : @escaping (Bool) -> Void) {
        self.switchCallBack = fun
        self.switchBtn.isHidden = false
        self.switchBtn.setOn(isOn, animated: true)
        setRowSelectDisable()
        contentRightConstraint.constant = 20
    }
    
   
    
    func regBtnAction(_ title : String, fun : @escaping CB) {
        self.btnCallBack = fun
        self.btn.isHidden = false
        self.label.isHidden = true
        self.content.isHidden = true
        self.switchBtn.isHidden = true
        self.img.isHidden = true
        self.btn.setTitle(title, for: UIControl.State.normal)
        setRowSelectDisable()
        contentRightConstraint.constant = 20
    }
    
    @IBAction func changeSwitch(_ sender: UISwitch) {
        if switchCallBack != nil {
            switchCallBack!(sender.isOn)
        }
    }
    @IBAction func btnAction(_ sender: UIButton) {
        if btnCallBack != nil {
            btnCallBack!()
        }
    }
}
