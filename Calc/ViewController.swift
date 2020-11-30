//
//  ViewController.swift
//  Calc
//
//  Created by Field Employee on 11/30/20.
//

import UIKit

class ViewController: UIViewController {
        
        var numberOnScreen: Double = 0
        var previousNumber: Double = 0
        var performingMath = false
        var operation = 0
    

    @IBAction func Numbers(_ sender: UIButton) {
        if performingMath == true {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        } else {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
    }
    @IBOutlet weak var label: UILabel!
    @IBAction func buttons(sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            previousNumber = Double(label.text!)!
            if sender.tag == 12 {//Divide
                performingMath = true
                previousNumber = Double(label.text!)!
                label.text = "/"
                operation = sender.tag
            }
            if sender.tag == 13 { //Multiply
                performingMath = true
                previousNumber = Double(label.text!)!
                label.text = "x"
                operation = sender.tag
            }
            if sender.tag == 14 {//Subtract
                performingMath = true
                previousNumber = Double(label.text!)!
                label.text = "-"
                operation = sender.tag
                
            }
            if sender.tag == 15 {//Add
                performingMath = true
                previousNumber = Double(label.text!)!
                label.text = "+"
                operation = sender.tag
                
            }
            operation = sender.tag
            performingMath = true
        }
        else if sender.tag == 16 {
            if operation == 12 {//Divide
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13 { //Multiply
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14 {//Subtract
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15 {//Add
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11 {
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
        
    }
            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


