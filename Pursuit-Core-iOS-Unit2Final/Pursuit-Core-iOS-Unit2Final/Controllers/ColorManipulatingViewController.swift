//
//  ColorManipulatingViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Liana Norman on 8/21/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ColorManipulatingViewController: UIViewController {
    
    var color: Crayon!
    
    @IBOutlet weak var colorName: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var resetColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()

        // Do any additional setup after loading the view.
    }
    
    func setUpViews() {
        colorName.text = color.name
        redSlider.value = Float(color.convertRedToCGFloatNumber(red: color.red))
        greenSlider.value = Float(color.convertGreenToCGFloatNumber(green: color.green))
        blueSlider.value = Float(color.convertBlueToCGFloatNumber(blue: color.blue))
        view.backgroundColor = UIColor(displayP3Red: color.convertRedToCGFloatNumber(red: color.red), green: color.convertGreenToCGFloatNumber(green: color.green), blue: color.convertBlueToCGFloatNumber(blue: color.blue), alpha: 1.0)
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
