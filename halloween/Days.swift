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
    let colors = [UIColor.brown, UIColor.orange]
    let textColors = [UIColor.orange, UIColor.black]
    
    func switchDaytime() {
        if daytime == true{
            daytime = false
        }
        else{
            daytime = true
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
    
    func getTextColor() -> UIColor {
        if daytime == true {
            return textColors[0]
        }
        else{
            return textColors[1]
        }
    }
    
    func isDaytimeImageVisible() -> Bool {
        if daytime == false{
            return true
        }
        else{
            return false
        }
    }
    
    func isNighttimeImageVisible() -> Bool {
        if daytime == true{
            return true
        }
        else {
            return false
        }
        
    }
    
}
