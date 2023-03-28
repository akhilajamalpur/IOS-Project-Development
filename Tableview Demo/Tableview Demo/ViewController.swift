//
//  ViewController.swift
//  Tableview Demo
//
//  Created by Canadore Student on 2023-03-27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    var tableItems = ["Item 1","Item 2","Item 3","Item 4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.delegate=self
        myTable.dataSource=self
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return tableItems.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=myTable.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text=tableItems[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(tableItems[indexPath.row]) selected")
    }
}

