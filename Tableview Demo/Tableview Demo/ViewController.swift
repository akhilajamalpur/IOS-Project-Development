//
//  ViewController.swift
//  Tableview Demo
//
//  Created by Canadore Student on 2023-03-27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.delegate=self
        myTable.dataSource=self
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=myTable.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text="Demo cell \(indexPath)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell \(indexPath.row) selected")
    }
}

