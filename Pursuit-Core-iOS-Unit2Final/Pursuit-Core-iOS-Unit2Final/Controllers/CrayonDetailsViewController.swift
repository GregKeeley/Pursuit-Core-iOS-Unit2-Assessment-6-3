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
    
    var newRed: CGFloat!
    var newGreen: CGFloat!
    var newBlue: CGFloat!
    var newAlpha: CGFloat!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRed = crayonRed
        newGreen = crayonGreen
        newBlue = crayonBlue
        newAlpha = alphaValue
        redValueSlider.value = Float(CGFloat(crayonRed/CGFloat(255)))
        greenValueSlider.value = Float(crayonGreen/CGFloat(255))
        blueValueSlider.value = Float(crayonBlue/CGFloat(255))
        
        
        view.backgroundColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255), green: CGFloat(crayon.green)/CGFloat(255), blue: CGFloat(crayon.blue)/CGFloat(255), alpha: alphaValue)
        
        
        redLabel.text = "Red Value: \(String(format: "%3.f", (newRed ?? 0)))"
               greenLabel.text = "Green Value: \(String(format: "%3.f", (newGreen ?? 0)))"
               blueLabel.text = "Blue Value: \(String(format: "%3.f", (newBlue ?? 0)))"
               alphaLabel.text = "Alpha Value: \(String(format: "%3.f", (alphaValue)))"
    }
    
    func updateLabels() {
        if newAlpha < 0.40000000000000013 {
            redLabel.textColor = .white
            greenLabel.textColor = .white
            blueLabel.textColor = .white
            alphaLabel.textColor = .white
        }
        if newRed >= 0.5 || newGreen >= 0.5 || newBlue >= 0.5  {
            redLabel.textColor = .black
            greenLabel.textColor = .black
            blueLabel.textColor = .black
            alphaLabel.textColor = .black
        } else {
            redLabel.textColor = .white
            greenLabel.textColor = .white
            blueLabel.textColor = .white
            alphaLabel.textColor = .white
        }
//        redLabel.text = "Red Value: \(String(format: "%2.f", newRed))"
//        greenLabel.text = "Green Value: \(String(format: "%2.f", newGreen))"
//        blueLabel.text = "Blue Value: \(String(format: "%2.f", newBlue))"
//        alphaLabel.text = "Alpha Value: \(String(format: "%2.f", newAlpha))"
        
        redLabel.text = "Red Value: \(String(format: "%3.f", (newRed * 255)))"
        greenLabel.text = "Green Value: \(String(format: "%3.f", (newGreen * 255)))"
        blueLabel.text = "Blue Value: \(String(format: "%3.f", (newBlue * 255)))"
        alphaLabel.text = "Alpha Value: \(String(format: "%3.f", (alphaValue)))"
    }
    
    func backgroundColorSet() {
        view.backgroundColor = UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: newAlpha)
        updateLabels()
    }
    

//MARK:Sliders/Stepper Actions
    @IBAction func redSliderChanged(_ sender: UISlider) {
        newRed = CGFloat(sender.value)
        
       view.backgroundColor = UIColor(red: CGFloat(newRed), green: CGFloat(newGreen)/CGFloat(255), blue: CGFloat(newBlue)/CGFloat(255), alpha: newAlpha)
        updateLabels()
    }
    @IBAction func greenValueChanged(_ sender: UISlider) {
        newGreen = CGFloat(sender.value)
        
        view.backgroundColor = UIColor(red: CGFloat(newRed)/CGFloat(255), green: CGFloat(sender.value), blue: CGFloat(newBlue)/CGFloat(255), alpha: newAlpha)
        updateLabels()
               
    }
    
    @IBAction func blueValueChanged(_ sender: UISlider) {
        newBlue = CGFloat(sender.value)/CGFloat(255)
        
       view.backgroundColor = UIColor(red: CGFloat(newRed)/CGFloat(255), green: CGFloat(newGreen)/CGFloat(255), blue: CGFloat(sender.value), alpha: newAlpha)
        updateLabels()
        
    }
    
    @IBAction func alphaValueChanged(_ sender: UIStepper) {
        newAlpha = CGFloat(sender.value)
       view.backgroundColor = UIColor(red: CGFloat(newRed)/CGFloat(255), green: CGFloat(newGreen)/CGFloat(255), blue: CGFloat(newBlue)/CGFloat(255), alpha: CGFloat(sender.value))
        updateLabels()
        print(newAlpha!)
    }
    
    @IBAction func resetColorButtonPressed() {
        redValueSlider.value = Float(crayonRed/CGFloat(255))
        greenValueSlider.value = Float(crayonGreen/CGFloat(255))
        blueValueSlider.value = Float(crayonBlue/CGFloat(255))
        view.backgroundColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255), green: CGFloat(crayon.green)/CGFloat(255), blue: CGFloat(crayon.blue)/CGFloat(255), alpha: alphaValue)
        updateLabels()
    }
}
