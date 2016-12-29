//
//  Utilities.swift
//  EquityStatus
//
//  Created by Paul Tangen on 12/19/16.
//  Copyright © 2016 Paul Tangen. All rights reserved.
//

import Foundation
import UIKit

class Utilities {

    // The api return status values such as pass, fail, noData, 100, 101 and 200. Convert these values to unicode value of the font icon.
    class func setStatusIcon(status: String, label: UILabel) {
        if status == "pass" || status == "101" {
            label.text = Constants.iconLibrary.faCheckCircle.rawValue
            label.textColor = UIColor(named: UIColor.ColorName.statusGreen)
        } else if status == "fail" || status == "100" {
            label.text = Constants.iconLibrary.faTimesCircle.rawValue
            label.textColor = UIColor(named: UIColor.ColorName.statusRed)
        } else {
            label.text = Constants.iconLibrary.faCircleO.rawValue
            label.textColor = UIColor(named: UIColor.ColorName.statusGreen)
        }
    }
    
//    class func getStatusColor(status: String) -> UIColor {
//        if status == "fail" || status == "100" {
//            return UIColor(named: UIColor.ColorName.statusRed)
//        } else {
//            return UIColor(named: UIColor.ColorName.statusGreen)
//        }
//    }

}
