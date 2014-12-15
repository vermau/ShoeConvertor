//
//  ViewController.swift
//  ShoeConvertor
//
//  Created by Ujjwal Verma on 12/16/14.
//  Copyright (c) 2014 xpertSolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMensShoeSize: UITextField!
    @IBOutlet weak var lblMensConvertedShoeSize: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnConvertPressed(sender: UIButton) {
        let conversionFactor: Int = 30
        let strMensShoeSize: String = txtMensShoeSize.text
        
        // Convert the string value from text field into an optional int and then unwrap the actual int by using " ! " mark
        var mensShoeSize: Int = strMensShoeSize.toInt()!
        
        // Convert the US size into European size
        mensShoeSize += conversionFactor
        
        // Convert the integer "mensShoeSize" into a String using String interpolation
        lblMensConvertedShoeSize.text = "European size: \(mensShoeSize)"
        lblMensConvertedShoeSize.hidden = false
        
    }

}

