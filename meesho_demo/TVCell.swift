//
//  TVCell.swift
//  meesho_demo
//
//  Created by Piyush Naranje on 18/08/22.
//

import UIKit

class TVCell: UITableViewCell {

    @IBOutlet var bgView: UIView!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var sideBorderView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
