//
//  GetColours.swift
//  protein
//
//  Created by kudakwashe on 2019/11/15.
//  Copyright © 2019 WeThinkCode. All rights reserved.
//

import Foundation
import QuartzCore
import SceneKit
class GetColours {
    
    func GetColour(_ colour: String) -> UIColor{
        switch colour {
        case "H":
            return UIColor(displayP3Red: 0.90, green: 0.90, blue: 0.90, alpha: 1.0)
        case "C":
            return UIColor(displayP3Red: 0.00, green: 0.00, blue: 0.00, alpha: 1.0)
        case "N":
            return UIColor(displayP3Red: 0.14, green: 0.26, blue: 0.98, alpha: 1.0)
        case "O":
            return UIColor(displayP3Red: 0.99, green: 0.15, blue: 0.11, alpha: 1.0)
        case "F":
            return UIColor(displayP3Red: 0.20, green: 0.93, blue: 0.22, alpha: 1.0)
        case "Ci":
            return UIColor(displayP3Red: 0.20, green: 0.93, blue: 0.22, alpha: 1.0)
        case "Br":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "I":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "P":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "S":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "B":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Ti":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Fe":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Be":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Mg":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Ca":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Sr":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Ba":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Ra)":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Li":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Na":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "K":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Rb":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Cs":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Fr":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "He":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Ne":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Ar":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Xe":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        case "Kr)":
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        default:
            print(colour)
            return UIColor(red:255.00, green:255.00, blue:255.00, alpha:1.0)
        }
    }
    
}
