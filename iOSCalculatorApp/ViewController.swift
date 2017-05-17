//
//  ViewController.swift
//  iOSCalculatorApp
//
//  Created by Himanshu Sharma on May/17/17.
//  Copyright © 2017 Himanshu Mishra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstValue: UITextField!
    @IBOutlet weak var txtSecondValue: UITextField!
    @IBOutlet weak var txtResults: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func add_click(_ sender: Any) {
        
        txtResults.text = "\(addition(firstVal: Int(txtFirstValue.text!)!, secondVal: Int(txtSecondValue.text!)!))"
    }

    @IBAction func subtract_click(_ sender: Any) {
         txtResults.text = "\(sub(firstVal: Int(txtFirstValue.text!)!, secondVal: Int(txtSecondValue.text!)!))"
    }

    @IBAction func multiply_click(_ sender: Any) {
        txtResults.text = "\(multiplication(firstVal: Int(txtFirstValue.text!)!, secondVal: Int(txtSecondValue.text!)!))"
        
    }
    @IBAction func divide_click(_ sender: Any) {
        txtResults.text = "\(divide(firstVal: Int(txtFirstValue.text!)!, secondVal: Int(txtSecondValue.text!)!))"
    }
    
    func addition(firstVal:Int, secondVal:Int)->Int{
        return firstVal + secondVal;
    }
    
    
    func sub(firstVal:Int, secondVal:Int)->Int{
        return firstVal - secondVal;
    }
    
    func multiplication(firstVal:Int, secondVal:Int)->Int{
        return firstVal * secondVal;
    }
    
    func divide(firstVal:Int, secondVal:Int)->Int{
        return firstVal/secondVal;
    }

}

