//
//  TableViewControllerPruebas.swift
//  GF14
//
//  Created by user188672 on 11/28/21.
//  Copyright © 2021 user188672. All rights reserved.
//

import UIKit

class TableViewControllerPruebas: UITableViewController {
    
    let pruebas = ["Tensión de ruptura dieléctrica del líquido aislante", "Relación de transformación", "Resistencias óhmicas de los devanados", "Factor de potencia", "Hermeticidad", "Resistencia de aislamientos"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "celda")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pruebas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = pruebas[indexPath.row]
        return cell
    }

}
