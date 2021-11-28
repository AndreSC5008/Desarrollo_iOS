//
//  TableViewController.swift
//  GF14
//
//  Created by user188672 on 11/27/21.
//  Copyright © 2021 user188672. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

   let precios = ["Mantenimiento $10,000", "Reparaciones $15,000", "Monitoreo $8,000", "Instalaciones $12,000","Pruebas de campo y diagnostico $12,000",
                  "**Precios aproximados sin materiales incluidos"]

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
        return precios.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = precios[indexPath.row]
        return cell
    }
    

}
