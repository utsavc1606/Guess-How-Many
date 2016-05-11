//
//  ViewController.swift
//  How Many Fingers ver1
//
//  Created by <JARVIS> on 5/10/16.
//  Copyright © 2016 <JARVIS>. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guessedNumber: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func compute(sender: AnyObject) {
        let num = (guessedNumber.text)!
        let intNum:Int = Int(num)!
        let randomNumber = arc4random_uniform(11)
        if intNum > 10{
            resultLabel.text = "Invalid Selection"
        }
        else if intNum == Int(randomNumber){
            resultLabel.text = "Correct!"
        }
        else{
            resultLabel.text = "Wrong - It's \(Int(randomNumber))"
        }

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

