//
//  ViewController.swift
//  GestoAnimacion
//
//  Created by alicharlie on 11/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipoGesto: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
      let myview = UIView (frame: CGRect(x: 0, y: 0, width: 200, height: 200))
myview.center = view.center
*

        let gestoTap = UITapGestureRecognizer(target: self, action: #selector(accionGesto(_:)))

        let gestoSwipe = UISwipeGestureRecognizer(target: self, action: #selector( accionGesto(_:)))

        view.addGestureRecognizer(gestoTap)
        view.addGestureRecognizer(gestoSwipe)
        view.isUserInteractionEnabled = true
        
    }
    @objc func accionGesto(_ sender: UIGestureRecognizer){
        if sender.isKind(of:UITapGestureRecognizer.self){
            tipoGesto.text = "Tap"
        }
        if sender.isKind(of:UISwipeGestureRecognizer.self){
            tipoGesto.text = "Swipe"
        }

          
      animacion()
      }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }
    
    func animacion(){
        UIView.animate(withDuration: 3, delay: 0.2, options: [], animations: {
            self.tipoGesto.alpha = 1.0
        }) { _ in
            self.tipoGesto.alpha = 0.0
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }

    
    
    

}

