//
//  botEventCell.swift
//  techbayTask
//
//  Created by Murteza on 14/10/2020.
//  Copyright © 2020 Murteza. All rights reserved.
//

import UIKit

class botEventCell: UITableViewCell {
    
   
    @IBOutlet weak var eventImage: UIImageView!
     @IBOutlet weak var tittlelabel: UILabel!
     @IBOutlet weak var locLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
