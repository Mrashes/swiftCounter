//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Max Rashes on 9/3/18.
//  Copyright © 2018 Beautiful Mess. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var thisLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var stepperAsOutlet: UIStepper!
    
    @IBAction func stepperObject(_ sender: UIStepper) {
        thisLabel.text = Int(sender.value).description
    }
    
    @IBAction func resetButton(_ sender: UIBarButtonItem) {
        stepperAsOutlet.value = 0
        thisLabel.text = Int(stepperAsOutlet.value).description
    }
    
    @IBAction func goToMax(_ sender: UIBarButtonItem) {
        stepperAsOutlet.value = stepperAsOutlet.maximumValue
        thisLabel.text = Int(stepperAsOutlet.value).description
    }
}



