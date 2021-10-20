//
//  ViewController.swift
//  ACT10__RASC
//
//  Created by user188672 on 10/20/21.
//  Copyright © 2021 user188672. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
@IBAction func TapOne(){
    let vc =  TablaVC()
    navigationController?.pushViewController(vc, animated:true)
}
}

