//
//  CrayonDetailsViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Gregory Keeley on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailsViewController: UIViewController {

    @IBOutlet weak var titleBar: UINavigationItem!
    @IBOutlet weak var redValueSlider: UISlider!
    @IBOutlet weak var greenValueSlider: UISlider!
    @IBOutlet weak var blueValueSlider: UISlider!
    @IBOutlet weak var alphaValueSlider: UISlider!
    @IBOutlet weak var setColorButton: UIButton!
    
    var crayon: Crayon?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: CGFloat(crayon!.red)/CGFloat(255), green: CGFloat(crayon!.green)/CGFloat(255), blue: CGFloat(crayon!.blue)/CGFloat(255), alpha: CGFloat(0.5))
    }
    @IBAction setColorButtonPressed() {
        
    }
}
