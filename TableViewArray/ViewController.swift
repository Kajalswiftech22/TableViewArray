//
//  ViewController.swift
//  TableViewArray
//
//  Created by Kajol   on 26/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
 
    @IBOutlet weak var arrayTableView: UITableView!
    
    var names = ["Nepal","Canada", "America", "Australia", "London", "Singapore", "India","China", "Denmark", "Morocco", "Germany", "Portugal", "Poland","Pakistan", "Korea", "Austria", "Paris", "Singapore", "Nepal","Canada", "America", "Australia", "London", "Singapore"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayTableView.dataSource = self
        arrayTableView.delegate = self

        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you selected \(names[indexPath.row])")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = arrayTableView.dequeueReusableCell(withIdentifier: "arrayCell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        
        return cell
    }
    
}
