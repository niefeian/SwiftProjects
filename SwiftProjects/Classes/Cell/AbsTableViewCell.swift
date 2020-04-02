//
//  AbsTableViewCell.swift
//  AutoData
//
//  Created by 聂飞安 on 2020/4/2.
//

import UIKit
import NFAToolkit
class AbsTableViewCell: UITableViewCell {

    var userData : AnyObject?
    weak var baseView : UIViewController!
       
     
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
