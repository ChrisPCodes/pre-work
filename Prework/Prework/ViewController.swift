//
//  ViewController.swift
//  Prework
//
//  Created by Chris Pineda on 1/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
         
        backgroundColor = view.backgroundColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.white
        
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.systemPink
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        
        //textLabel.text = "Goodbye!"
        textLabel.text = textField.text
        if textField.text == "" {
        
            textLabel.text = "Goodbye 👋"
        }
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
        textField.text = ""
        
    }
}

