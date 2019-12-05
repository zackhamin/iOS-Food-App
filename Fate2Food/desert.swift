//
//  desert.swift
//  Fate2Food
//
//  Created by Ishaq on 05/12/2019.
//  Copyright © 2019 Ishaq. All rights reserved.
//

import UIKit

class Desert: UIViewController {
    
    
    var takeAways = ["Waffles","Ice Cream","Cake","Slushies","Shakes","Pastries","Sweets","Doughnuts"]
    var desertPics = [#imageLiteral(resourceName: "waffle"), #imageLiteral(resourceName: "ice-cream") , #imageLiteral(resourceName: "cake-slice")  ,#imageLiteral(resourceName: "soft-drink") ,#imageLiteral(resourceName: "milkshake") ,#imageLiteral(resourceName: "pretzel"),#imageLiteral(resourceName: "candy"),#imageLiteral(resourceName: "donut")]
    var randomDesertIndex = 0
    
    @IBOutlet weak var desertLabel: UILabel!
    @IBOutlet weak var desertImage: UIImageView!
    
    
    
    
    
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
    
