//
//  ViewController.swift
//  Postcard
//
//  Created by Jeyson Artiles on 6/1/15.
//  Copyright (c) 2015 Jeyson Artiles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sendersName: UILabel!
    @IBOutlet weak var sendersMessage: UITextView!
    
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("TEST TO CONSOLE!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func postButton(sender: UIButton) {
        
        //NO MORE
        
        // CHECK 
        if enterName.text == "" || enterMessage.text == "" {
            sendersName.textColor = UIColor.whiteColor()
            sendersName.backgroundColor = UIColor.redColor()
            sendersName.text = "ENTER NAME & MESSAGE"
            sendersName.hidden = false
        } else {
            
            sendersName.backgroundColor = UIColor.blackColor()

            // PRINT sendersName
            sendersName.hidden = false
            sendersMessage.hidden = false
            enterName.hidden = true
            enterMessage.hidden = true
            
            // CHANGE "SEND" (postButton) to "SENT"
            sender.setTitle("SENT", forState: .Normal)
            sender.setTitleColor(UIColor.blackColor(), forState: .Normal)
            sender.backgroundColor = UIColor.whiteColor()
            
            // REPLACE sendersName & sendersMessage placeholders with enterName & enterMessage; respectively
            sendersName.text = enterName.text
            sendersMessage.text = enterMessage.text
        }
        
        // REMOVE keyboard on button press (postButton)
        enterName.resignFirstResponder()
        enterMessage.resignFirstResponder()
    }

}

