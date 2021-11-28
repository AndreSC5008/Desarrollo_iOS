//
//  ViewController.swift
//  GF14
//
//  Created by user188672 on 10/26/21.
//  Copyright © 2021 user188672. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func TapOferta(){
        let oferta =  TableViewController()
        navigationController?.pushViewController(oferta, animated:true)
    }
    
    @IBAction func TapEquipo(){
        let equipo =  TableViewControllerEquipo()
        navigationController?.pushViewController(equipo, animated:true)
    }
    
    @IBAction func TapPruebas(){
        let pruebas =  TableViewControllerPruebas()
        navigationController?.pushViewController(pruebas, animated:true)
    }}

