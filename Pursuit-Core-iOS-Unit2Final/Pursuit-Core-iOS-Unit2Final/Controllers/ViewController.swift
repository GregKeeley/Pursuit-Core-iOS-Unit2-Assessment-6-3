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
    }
    
    
}



//MARK: Extension
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = UIColor(red: CGFloat(crayon.red), green: CGFloat(crayon.green), blue: CGFloat(crayon.blue), alpha: 0.50)
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        crayons.count
    }
}
