//
//  ColorDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Levi Davis on 8/21/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit


class ColorDetailViewController: UIViewController {
    var crayon: Crayon!
    var delegate: ColorChangeDelegate?
    
    @IBOutlet weak var crayonColorLabel: UILabel!
    
    
    @IBAction func redSlider(_ sender: UISlider) {
        crayon.changeRed(red: CGFloat(sender.value))
        updateColor()
        
        
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        crayon.changeGreen(green: CGFloat(sender.value))
        updateColor()
        
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        crayon.changeBlue(blue: CGFloat(sender.value))
        updateColor()
    }
    
    @IBAction func alphaStepper(_ sender: UIStepper) {
        crayon.changeAlpha(alpha: CGFloat(sender.value))
        updateColor()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        crayonColorLabel.text = crayon.name
        view.backgroundColor = UIColor(red: crayon.red, green: crayon.green, blue: crayon.blue, alpha: 1.0)

        // Do any additional setup after loading the view.
    }
    
    private func updateColor() {
        delegate?.getNewColor(red: crayon.red, blue: crayon.blue, green: crayon.green, alpha: crayon.alpha)
        view.backgroundColor = crayon.getColor()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}