//
//  topCell.swift
//  techbayTask
//
//  Created by Murteza on 13/10/2020.
//  Copyright © 2020 Murteza. All rights reserved.
//

import UIKit
import Foundation
import DateScrollPicker
class topCell: UITableViewCell ,DateScrollPickerDelegate{
   
    
    @IBOutlet weak var datePicker: DateScrollPicker!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setupScrollPicker1()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    private func setupScrollPicker1() {
           var format = DateScrollPickerFormat()
            format.days = 6
           format.topDateFormat  = "dd"
           format.mediumDateFormat  = "EE"
           format.bottomDateFormat  = "EE"
           format.topTextColor = UIColor.white
            format.bottomTextColor = UIColor.white
           format.topTextSelectedColor = UIColor.black
           format.bottomTextSelectedColor = UIColor.black
          
           format.topFont = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.bold)
          format.mediumFont = UIFont.systemFont(ofSize: 10, weight: UIFont.Weight.bold)
           format.bottomFont =  UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.bold)
           format.dayBackgroundColor = #colorLiteral(red: 0.05712585896, green: 0.1525842547, blue: 0.2015139163, alpha: 1)
           format.dayBackgroundSelectedColor = #colorLiteral(red: 0.9568627451, green: 0.7764705882, blue: 0.007843137255, alpha: 1)
           format.separatorTopTextColor = UIColor.white
           
           format.mediumTextSelectedColor = UIColor.clear
           format.mediumTextColor = UIColor.clear
           format.separatorBottomTextColor = UIColor.white.withAlphaComponent(0.6)
           format.separatorBackgroundColor = UIColor.white.withAlphaComponent(0.3)
           format.separatorTopFont =  UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.bold)
           format.separatorBottomFont =  UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.bold)
           
           datePicker.format = format
       
      datePicker.delegate = self 
       }
    
    
}
