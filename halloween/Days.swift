//
//  Days.swift
//  halloween
//
//  Created by Lee, Christopher on 9/25/21.
//

import Foundation
import UIKit

class Days {
    var daytime = true
    let colors = [UIColor.brown, UIColor.black]
    
    func switchDaytime() -> Bool {
        if daytime == true{
            return false
        }
        else{
            return true
        }
    }
    
    func getColor() -> UIColor {
        if daytime == true {
            return colors[0]
        }
        else{
            return colors[1]
        }
    }
    
}
