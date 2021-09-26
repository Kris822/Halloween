//
//  ViewController.swift
//  halloween
//
//  Created by Lee, Christopher on 9/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appTitle: UILabel!
    
    @IBOutlet weak var appButton: UIButton!
    
    var model = Days()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = model.getColor()
        appTitle?.text = NSLocalizedString("app_title", comment: "the app's title")
        appButton?.setTitle(NSLocalizedString("button_text", comment: "the text on the button"), for: .normal)
        appTitle.textColor = UIColor.orange
    }

    @IBAction func changeDayNight(_ sender: Any) {
        model.switchDaytime()
        self.view.backgroundColor = model.getColor()
        appTitle.textColor = model.getTextColor()
    }
    
}

