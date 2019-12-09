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
    
    @IBAction func chickenTouch(_ sender: UIButton) {
        
        foodView.image = #imageLiteral(resourceName: "fried-chicken (1)")
        shakeLabel.text = "Southern Fried Chicken"
    }
    
    
    @IBAction func thaiTouch(_ sender: UIButton) {
        
        foodView.image = #imageLiteral(resourceName: "wonton-noodles")
        shakeLabel.text = "Thai"
    }
    
    @IBAction func burgerTouch(_ sender: UIButton) {
        
        foodView.image = #imageLiteral(resourceName: "fried-potatoes")
        shakeLabel.text = "Something with Chips!"
    }
    
    @IBAction func burgerTouchMain(_ sender: UIButton) {
        
        foodView.image = #imageLiteral(resourceName: "burger")
        shakeLabel.text = "Burger"
    }
    
    @IBAction func indianFood(_ sender: UIButton) {
        
        foodView.image = #imageLiteral(resourceName: "samosa (1)")
        shakeLabel.text = "Indian"
    }
    
    
    @IBAction func chineseFood(_ sender: UIButton) {
        
        foodView.image = #imageLiteral(resourceName: "ramen")
        shakeLabel.text = "Chinese"
    }
    
    @IBAction func kebabFood(_ sender: UIButton) {
        
        foodView.image = #imageLiteral(resourceName: "kebab (1)")
        shakeLabel.text = "Kebab"
    }
    
    @IBAction func fishChips(_ sender: UIButton) {
        
        foodView.image = #imageLiteral(resourceName: "fish-and-chips (1)")
        shakeLabel.text = "Fish and Chips"
    }
    
 
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

