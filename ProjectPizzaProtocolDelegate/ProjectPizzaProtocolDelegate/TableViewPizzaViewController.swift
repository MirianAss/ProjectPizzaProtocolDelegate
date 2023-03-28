//
//  TableViewPizzaViewController.swift
//  ProjectPizzaProtocolDelegate
//
//  Created by Mirian Santana on 28/03/23.
//

import UIKit

class TableViewPizzaViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayPizza: Pizza?
    let request = Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        myRequest()
    }
    
    func setupTableView() {
        
        tableView.register(UINib(nibName: "CellPizzaTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        
    }
    
    func myRequest() {
        
        request.delegate = self
        request.requestPizza{arrayPizza in
            
        }
    }
}
extension TableViewPizzaViewController: RequestDelegate {
    
    func finishRequest(arrayDePizza: Pizza?) {
        self.arrayPizza = arrayDePizza
        self.tableView.reloadData()
    }
}
extension TableViewPizzaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellPizzaTableViewCell {
            
            cell.setupPizza(pizza: self.arrayPizza?[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
}
