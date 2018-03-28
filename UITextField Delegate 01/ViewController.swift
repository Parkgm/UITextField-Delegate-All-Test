//
//  ViewController.swift
//  UITextField Delegate 01
//
//  Created by 김종현 on 2018. 3. 22..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.delegate = self
        myTextField.placeholder = "입력하세요!"
        myTextField.clearButtonMode = UITextFieldViewMode.whileEditing
    }

    @IBAction func buttonPressed(_ sender: Any) {
        resultLabel.text = "Hello" + " " + myTextField.text!
        myTextField.text = ""
        myTextField.resignFirstResponder()
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow  editing.
    {
        print("textFieldShouldBeginEditing")
        return true
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) // became first responder
    {
        print("textFieldDidBeginEditing")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
    {
        print("textFieldShouldEndEditing")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    {
        print("textFieldDidEndEditing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) // if implemented, called in place of textFieldDidEndEditing:
    {
        print("textFieldDidEndEditing")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool // return NO to not change text
    {
        print("textField")
        return true
    }
    
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool // called when clear button pressed. return NO to ignore (no notifications)
    {
        print("textFieldShouldClear")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        print("textFieldShouldReturn")
        view.backgroundColor = UIColor.yellow
        return true
    }
}


