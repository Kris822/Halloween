//
//  ViewController.swift
//  halloween
//
//  Created by Lee, Christopher on 9/25/21.
//

import UIKit

class ViewController: UIViewController {

    var model = Days()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = model.getColor()
    }

    
    @IBAction func changeDayNight(_ sender: Any) {
        model.switchDaytime()
        self.view.backgroundColor = model.getColor()
    }
    
}

