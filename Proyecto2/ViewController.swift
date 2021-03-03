//
//  ViewController.swift
//  Proyecto2
//
//  Created by Maria Lacayo on 2/15/20.
//  Copyright © 2020 dwim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter: Int = 0
    var michis: [String] = ["asustado","enojado","michi","ooo","sorprendido"]
    
    @IBOutlet weak var imageViewOulet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageViewOulet.image = UIImage(named: michis[counter])
    }

    @IBAction func changeImage(_ sender: UIButton){
        if sender.tag == 0{
            print("BOTON IZQUIERDA")
            counter-=1
            if counter < 0{
                counter = 0
            }
        }else{
            print("BOTON DERECHA")
            counter += 1
            if counter > michis.count - 1{
                counter = michis.count - 1
            }
        }
        
        imageViewOulet.image=UIImage(named: michis[counter])
    }

}

