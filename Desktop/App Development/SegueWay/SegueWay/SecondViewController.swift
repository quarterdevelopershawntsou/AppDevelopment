//
//  SecondViewController.swift
//  SegueWay
//
//  Created by Shawn on 23/07/2018.
//  Copyright © 2018 Shawn. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var textPassedOver : String?
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text =  textPassedOver
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
