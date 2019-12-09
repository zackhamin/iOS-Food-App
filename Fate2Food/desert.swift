//
//  desert.swift
//  Fate2Food
//
//  Created by Ishaq on 05/12/2019.
//  Copyright © 2019 Ishaq. All rights reserved.
//

import UIKit

class Desert: UIViewController {
    
    var takeAways = ["Waffles","Ice Cream","Cake","Slushies","Milk Shakes","Pastries","Sweets","Doughnuts","Cup Cakes"]
    var desertPics = [#imageLiteral(resourceName: "waffle"), #imageLiteral(resourceName: "ice-cream") , #imageLiteral(resourceName: "cake-slice")  ,#imageLiteral(resourceName: "soft-drink") ,#imageLiteral(resourceName: "milkshake") ,#imageLiteral(resourceName: "pretzel"),#imageLiteral(resourceName: "candy"),#imageLiteral(resourceName: "donut"),#imageLiteral(resourceName: "cupcake")]
    
    
    var randomDesertIndex = 0
    
    @IBOutlet weak var desertLabel: UILabel!
    @IBOutlet weak var desertImage: UIImageView!
    
    
    
    @IBAction func sweetsButton(_ sender: UIButton) {
        desertImage.image = #imageLiteral(resourceName: "candy")
        desertLabel.text = "Sweets"
    }
    
    

    @IBAction func doghnutTouch(_ sender: UIButton) {

        desertImage.image = #imageLiteral(resourceName: "donut")
        desertLabel.text = "Doughnuts"
    }

    @IBAction func iceCreamTouch(_ sender: UIButton) {

        desertImage.image = #imageLiteral(resourceName: "ice-cream")
        desertLabel.text = "Ice Cream"
    }

    @IBAction func cakeTouch(_ sender: UIButton) {

        desertImage.image = #imageLiteral(resourceName: "cake (1)")
        desertLabel.text = "Cake"
    }


    @IBAction func cupCakeTouch(_ sender: UIButton) {

        desertImage.image = #imageLiteral(resourceName: "cupcake")
        desertLabel.text = "Cup Cakes"
    }

    @IBAction func slushieTouch(_ sender: UIButton) {

        desertImage.image = #imageLiteral(resourceName: "soft-drink")
        desertLabel.text = "Slushie"
    }


    @IBAction func waffleTouch(_ sender: UIButton) {

        desertImage.image = #imageLiteral(resourceName: "waffle")
        desertLabel.text = "Waffles"
    }


    @IBAction func pastryTouch(_ sender: UIButton) {

        desertImage.image = #imageLiteral(resourceName: "pretzel")
        desertLabel.text = "Pastries"
    }

    @IBAction func milkShakeTouch(_ sender: UIButton) {

        desertImage.image = #imageLiteral(resourceName: "milkshake (1)")
        desertLabel.text = "Milk Shake"
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            randomDesertIndex = Int.random(in: 0 ... 7)
            desertImage.image = desertPics[randomDesertIndex]
            desertLabel.text = takeAways[randomDesertIndex]
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
}
    
