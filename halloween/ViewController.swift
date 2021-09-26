//
//  ViewController.swift
//  halloween
//
//  Created by Lee, Christopher on 9/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appTitle: UILabel!
    
    @IBOutlet weak var appText: UILabel!
    @IBOutlet weak var candyImage: UIImageView!
    @IBOutlet weak var scarecrowImage: UIImageView!
    
    @IBOutlet weak var pumpkinImage: UIImageView!
    @IBOutlet weak var spooky: UIImageView!
    @IBOutlet weak var skullImage: UIImageView!
    
    @IBOutlet weak var houseImage: UIImageView!
    
    @IBOutlet weak var candy2: UIImageView!
    
    @IBOutlet weak var candy3: UIImageView!
    
    
    var model = Days()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = model.getColor()
        appTitle?.text = NSLocalizedString("app_title", comment: "the app's title")
        appText?.text = NSLocalizedString("app_text", comment: "the app's text with instructions")
        appTitle.textColor = model.getTextColor()
        appText.textColor = model.getTextColor()
        pumpkinImage.isHidden = model.isDaytimeImageVisible()
        candyImage.isHidden = model.isDaytimeImageVisible()
        candy2.isHidden = model.isDaytimeImageVisible()
        candy3.isHidden = model.isDaytimeImageVisible()
        spooky.isHidden = model.isNighttimeImageVisible()
        scarecrowImage.isHidden = model.isNighttimeImageVisible()
        skullImage.isHidden = model.isNighttimeImageVisible()
        houseImage.isHidden = model.isNighttimeImageVisible()
    }

    @IBAction func ontap(_ sender: Any) {
        model.switchDaytime()
        self.view.backgroundColor = model.getColor()
        appTitle.textColor = model.getTextColor()
        appText.textColor = model.getTextColor()
        pumpkinImage.isHidden = model.isDaytimeImageVisible()
        candyImage.isHidden = model.isDaytimeImageVisible()
        candy2.isHidden = model.isDaytimeImageVisible()
        candy3.isHidden = model.isDaytimeImageVisible()
        spooky.isHidden = model.isNighttimeImageVisible()
        scarecrowImage.isHidden = model.isNighttimeImageVisible()
        skullImage.isHidden = model.isNighttimeImageVisible()
        houseImage.isHidden = model.isNighttimeImageVisible()
    }

}

