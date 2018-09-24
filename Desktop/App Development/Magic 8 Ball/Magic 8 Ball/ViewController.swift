//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Shawn on 10/07/2018.
//  Copyright © 2018 Shawn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallIndex: Int = 0
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var askMeAnything: UILabel!
    @IBOutlet weak var magic8Ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
    
        updateBallImage()
        
    }
    
    func updateBallImage(){
    
        randomBallIndex = Int(arc4random_uniform(4))
        magic8Ball.image = UIImage(named: ballArray[randomBallIndex])
        
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }

}


