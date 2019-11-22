//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// reuse indentifier = "crayonCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    var crayons = [Crayon]()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
  }


}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: <#T##IndexPath#>)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        crayons.count
    }
}
