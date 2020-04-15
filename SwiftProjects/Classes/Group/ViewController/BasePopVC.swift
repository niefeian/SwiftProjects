//
//  BasePopVC.swift
//  SwiftProjects
//
//  Created by 聂飞安 on 2020/4/2.
//

import UIKit
import NFAToolkit

open class BasePopVC: BaseViewController , PopupContentViewController {
    
    private var popSize = CGSize.zero
    
    override open func viewDidLoad() {
       super.viewDidLoad()
       // Do any additional setup after loading the view.
    }
   
    open func sizeForPopup(_ popupController: PopupController, size: CGSize, showingKeyboard: Bool) -> CGSize {
        return popSize
    }
    
   open func regPopSize(_ popSize : CGSize) {
       self.popSize = popSize
   }
    
    var blankImage: CustImageView?
    var blankLabel: UILabel?
    //加了一个高度属性，针对不同的页面可以自定义头部距离
    open func showBlankDataTip(_ message : String = "暂无数据" , tipsImage : String , topConstant : CGFloat = AppHeight * 0.3, addInTheView : UIView , cb : @escaping CB) {
        if blankImage?.superview != nil {
            return
        }
        blankImage = CustImageView(image: UIImage(named: tipsImage))
        blankImage!.translatesAutoresizingMaskIntoConstraints = false
        let imageTop = NSLayoutConstraint(item: blankImage!, attribute: .top, relatedBy: .equal, toItem: addInTheView, attribute: .top, multiplier: 1, constant:topConstant)
        let imageCenterX = NSLayoutConstraint(item: blankImage!, attribute: .centerX, relatedBy: .equal, toItem: addInTheView, attribute: .centerX, multiplier: 1, constant: 0)
        addInTheView.addSubview(blankImage!)
        addInTheView.addConstraints([imageTop, imageCenterX])
        blankLabel = UILabel()
        blankLabel!.textColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
        blankLabel!.translatesAutoresizingMaskIntoConstraints = false
        addInTheView.addSubview(blankLabel!)
        blankLabel!.text = message
        blankLabel?.font = UIFont.systemFont(ofSize: 14)
        blankLabel?.textAlignment = .center
        blankImage?.addClickEvents(cb)
        let dataTop = NSLayoutConstraint(item: blankLabel!, attribute: .top, relatedBy: .equal, toItem: blankImage, attribute: .bottom, multiplier: 1, constant: 10)
        let dataCenterX = NSLayoutConstraint(item: blankLabel!, attribute: .centerX, relatedBy: .equal, toItem: blankImage, attribute: .centerX, multiplier: 1, constant: 0)
        addInTheView.addConstraints([dataTop, dataCenterX])
    }
    
   open func hiddenBlankDataTip() {
        blankImage?.removeFromSuperview()
        blankLabel?.removeFromSuperview()
        blankImage = nil
        blankLabel = nil
    }
    
   
}
