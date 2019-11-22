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
    
    var crayon: Crayon?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: CGFloat(crayon!.red), green: CGFloat(crayon!.green), blue: CGFloat(crayon!.blue), alpha: 0.50)
    }
    

  

}
