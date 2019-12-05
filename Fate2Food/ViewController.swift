//
//  ViewController.swift
//  Fate2Food
//
//  Created by Ishaq on 04/12/2019.
//  Copyright © 2019 Ishaq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var takeAways = ["Chinese","Indian","Fish and Chips","Pizza","Southern Fried Chicken","Kebab","Thai","Burger","Sushi","Italian","Mexican"]
    var foodPics = [#imageLiteral(resourceName: "ramen"), #imageLiteral(resourceName: "samosa (1)") , #imageLiteral(resourceName: "fish-and-chips (1)")  ,#imageLiteral(resourceName: "pizza-slice-1") ,#imageLiteral(resourceName: "fried-chicken (1)") ,#imageLiteral(resourceName: "kebab (1)"),#imageLiteral(resourceName: "pad-thai"),#imageLiteral(resourceName: "burger"),#imageLiteral(resourceName: "sushi (1)"), #imageLiteral(resourceName: "spaghetti "),#imageLiteral(resourceName: "taco")]
    var randomFoodIndex = 0
    
    
    @IBOutlet weak var foodView: UIImageView!
    @IBOutlet weak var shakeLabel: UILabel!
    
    override func becomeFirstResponder() -> Bool {
        return true
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            randomFoodIndex = Int.random(in: 0 ... 9)
            foodView.image = foodPics[randomFoodIndex]
            shakeLabel.text = takeAways[randomFoodIndex]
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }


}

