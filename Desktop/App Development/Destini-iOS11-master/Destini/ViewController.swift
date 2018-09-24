//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

var storyState : Int = 0

class ViewController: UIViewController {

    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    let allStory = StoryBank()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
//        storyTextView.text = allStory.list[storyState].storyText
//        topButton.setTitle(allStory.list[storyState].answerTagOne, for: .normal)
//        bottomButton.setTitle(allStory.list[storyState].answerTagTwo, for: .normal)
//
        updateStory()

    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        // TODO Step 4: Write an IF-Statement to update the views
        if storyState == 0{
            if sender.tag == 1{
                storyState = 2
            }
            else if sender.tag == 2{
                showJumpToNextChapter()
                storyState = 1
            }
            showJumpToNextChapter()
        }
        else if storyState == 1{
            if sender.tag == 1{
                showJumpToNextChapter()
                storyState = 2
            }
            else if sender.tag == 2 {
                showJumpToNextChapter()
                storyState = 3
            }
            showJumpToNextChapter()
        }
        else if storyState == 2 {
            if sender.tag == 1{
                storyState = 5
            }
            else if sender.tag == 2{
                storyState = 4
            }
            showJumpToNextChapter()
        }
        // TODO Step 6: Modify the IF-Statement to complete the story
        else if storyState == 4 || storyState == 5 || storyState == 6{
            storyTextView.text = "Story Complete"
            // show Restart (written in objective C)
            let alert = UIAlertController(title: "Story is Over", message: "Do you want to restart", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:{ (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
        
        
        
        updateStory()
    
    }
    
    func updateStory () {
        if storyState != 4 && storyState != 5 && storyState != 6 {
            storyTextView.text = allStory.list[storyState].storyText
            topButton.setTitle(allStory.list[storyState].answerTagOne, for: .normal)
            bottomButton.setTitle(allStory.list[storyState].answerTagTwo, for: .normal)
        }
        else {
            storyTextView.text = allStory.list[storyState].storyText
            topButton.setTitle(allStory.list[storyState].answerTagOne, for: .normal)
            bottomButton.isHidden = true
        }
    }
    
    func startOver() {
        storyState = 0
        bottomButton.isHidden = false
        updateStory()
    }
    
    func showJumpToNextChapter() {
       ProgressHUD.showSuccess("Next Chapter")
    }


}

