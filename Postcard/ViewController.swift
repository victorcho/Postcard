//
//  ViewController.swift
//  Postcard
//
//  Created by Victor Cho on 2015-02-15.
//  Copyright (c) 2015 victorcho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        messageLabel.hidden = false
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

