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
    @IBOutlet weak var alphaValueStepper: UIStepper!
    @IBOutlet weak var setColorButton: UIButton!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    
    var crayon: Crayon!
    var alphaValue: CGFloat!
    var crayonRed: CGFloat!
    var crayonGreen: CGFloat!
    var crayonBlue: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255), green: CGFloat(crayon.green)/CGFloat(255), blue: CGFloat(crayon.blue)/CGFloat(255), alpha: alphaValue)
        updateLabels()
    }
    
    func updateLabels() {
        redValueSlider.value = Float(crayonRed/CGFloat(255))
        greenValueSlider.value = Float(crayonGreen/CGFloat(255))
        blueValueSlider.value = Float(crayonBlue/CGFloat(255))

        redLabel.text = "Red Value: \(crayon!.red)"
        greenLabel.text = "Green Value: \(crayon!.green)"
        blueLabel.text = "Blue Value: \(crayon!.blue)"
        
//        print("\(String(describing: crayon?.red.description))")
//        print("\(String(describing: crayon?.green.description))")
//        print("\(String(describing: crayon?.blue.description))")
    }
    
    func changeBackgroundColor(_ color: CGFloat) {
        
    }
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        print("Red: \(sender.value)")
        view.backgroundColor = UIColor(red: CGFloat(sender.value)/CGFloat(255), green: CGFloat(crayon.green)/CGFloat(255), blue: CGFloat(crayon.blue)/CGFloat(255), alpha: alphaValue)
               
    }
    @IBAction func greenValueChanged(_ sender: UISlider) {
        print("green: \(sender.value)")
        view.backgroundColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255), green: CGFloat(sender.value)/CGFloat(255), blue: CGFloat(crayon.blue)/CGFloat(255), alpha: alphaValue)
        
               
    }
    @IBAction func blueValueChanged(_ sender: UISlider) {
        print("blue: \(sender.value)")
        view.backgroundColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255), green: CGFloat(crayon.green)/CGFloat(255), blue: CGFloat(sender.value)/CGFloat(255), alpha: alphaValue)
        
               
    }
    @IBAction func alphaValueChanged(_ sender: UIStepper) {
        print("Alpha: \(sender.value)")
        view.backgroundColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255), green: CGFloat(crayon.green)/CGFloat(255), blue: CGFloat(crayon.blue)/CGFloat(255), alpha: CGFloat(sender.value))
        
               
    }
    
    @IBAction func resetColorButtonPressed() {
        view.backgroundColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255), green: CGFloat(crayon.green)/CGFloat(255), blue: CGFloat(crayon.blue)/CGFloat(255), alpha: alphaValue)
        updateLabels()
    }
}
