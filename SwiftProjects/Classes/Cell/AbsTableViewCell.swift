//
//  AbsTableViewCell.swift
//  AutoData
//
//  Created by 聂飞安 on 2020/4/2.
//

import UIKit
import NFAToolkit
open class AbsTableViewCell: UITableViewCell {

    public var userData : AnyObject?
    weak public var baseView : UIViewController!
       
     
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
