//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var crayons = [Crayon]()
    var alphaValue: CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadData()
    }
    func loadData() {
        crayons = Crayon.allTheCrayons
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let CrayonDetailVC = segue.destination as? CrayonDetailsViewController,
            let indexPath = tableView.indexPathForSelectedRow else {
                fatalError("Failed to prepare for segue correctly")
        }
        let crayon = crayons[indexPath.row]
        CrayonDetailVC.crayon = crayon
        CrayonDetailVC.titleBar.title = crayon.name
        CrayonDetailVC.alphaValue = alphaValue
        CrayonDetailVC.crayonRed = CGFloat(crayon.red)
        CrayonDetailVC.crayonGreen = CGFloat(crayon.green)
        CrayonDetailVC.crayonBlue = CGFloat(crayon.blue)
    }
    
    
}



//MARK: Extension
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        if crayon.red == 0 && crayon.green == 0 && crayon.blue == 0 {
            cell.textLabel?.textColor = .white
            cell.detailTextLabel?.textColor = .white
            cell.backgroundColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255), green: CGFloat(crayon.green)/CGFloat(255), blue: CGFloat(crayon.blue)/CGFloat(255), alpha: alphaValue)
        } else {
            cell.backgroundColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255), green: CGFloat(crayon.green)/CGFloat(255), blue: CGFloat(crayon.blue)/CGFloat(255), alpha: alphaValue)
            
        }
        return cell
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    crayons.count
}
}
