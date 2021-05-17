//
//  ViewController.swift
//  Calculator UIKit
//
//  Created by Junjie Li on 5/11/21.
//

import UIKit

class ViewController: UIViewController {
    var model = CalculatorModel()
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func touchButtons(_ sender: UIButton) {
        //修改model
        model.touchButtons(button: sender.currentTitle!)
        //更改view
        result.text = model.result
    }
}

