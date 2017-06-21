//
//  ViewController.swift
//  Calculator
//
//  Created by Jonny Mac on 6/19/17.
//  Copyright © 2017 Jonny Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var isTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        if let digit = sender.currentTitle {
            if isTyping, let textInDisplay = display.text {
                display.text = textInDisplay + digit }
            else {
                display.text = digit
                isTyping = true
            }
        }
    }
    
    var displayValue: Double {
        get { return Double(display.text!)! }
        set { display.text = String(newValue) }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        isTyping = false
        if let mathSymbol = sender.currentTitle {
            switch mathSymbol {
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
}

