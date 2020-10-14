//
//  tableViewHelper.swift
//  Kanz
//
//  Created by Murteza on 26/08/2020.
//  Copyright © 2020 Murteza. All rights reserved.
//


import Foundation
import UIKit

class TableViewHelper {

    class func EmptyMessage(message:String, viewController:UIViewController,tableview:UITableView) {
        let rect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: tableview.backgroundView?.bounds.size.width ?? 0, height: tableview.backgroundView?.bounds.size.height ?? 0))
        let messageLabel = UILabel(frame: rect)
        messageLabel.text = message
        messageLabel.textColor = UIColor.black
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center;
        messageLabel.font = UIFont(name: "TrebuchetMS", size: 15)
        messageLabel.sizeToFit()

        tableview.backgroundView = messageLabel;
       tableview.separatorStyle = .none
    }
}
