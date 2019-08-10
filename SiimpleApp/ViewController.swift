//
//  ViewController.swift
//  SiimpleApp
//
//  Created by Leo Yu on 9/14/15.
//  Copyright © 2015 Yu, Leo. All rights reserved.
//  add

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    //weak because Nib owns it
    //! implict optional
    // wrapped in optional
    @IBOutlet weak var headlineLabel: UILabel!
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    override func viewDidAppear( _ animated: Bool) {
        
        super.viewDidAppear(animated);
        
    }

    @IBAction func buttonPressed(sender: UIButton)
    {
        
        print("Hi ! ")
        
        headlineLabel.text = "Yah Swift!"
        detailLabel.text = "World, I am rady for you "
        view.backgroundColor = .yellow
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if let  name = textField.text {
            if name.count > 1 {
            headlineLabel.text  = "Hello \(name)"
            textField.resignFirstResponder();
            return true;
            }
        }
        
        return false;
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.becomeFirstResponder();
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        print("\(textField.text)")
    }
}

