//
//  ContactListTableViewCell.swift
//  Test
//
//  Created by Vishnu Dev on 06/10/22.
//

import UIKit

class ContactListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contactImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func nib() -> UINib{
        return UINib(nibName :ContactListTableViewCell.nameOfClass,bundle:nil )
    }
    
    
}
