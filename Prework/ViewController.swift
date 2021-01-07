//
//  ViewController.swift
//  Prework
//
//  Created by Nicolas  on 1/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLabel: UILabel! // variable textLabel of type UILabel
    
    var backgroundColor: UIColor! //declare a variable type UIColor
    var textColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor;
        textColor = textLabel.textColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        // runs when button pressed
        print("Hello")
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        // textLabel.text = "Goodbye!"
        if (textField.text == "") {
            textLabel.text = "Goodbye!"
        } else {
            textLabel.text = textField.text
        }
        textField.text = ""
        view.endEditing(true)
    }
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.white
    }
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello"
        view.backgroundColor = backgroundColor
        textLabel.textColor = textColor
        
    }
}

