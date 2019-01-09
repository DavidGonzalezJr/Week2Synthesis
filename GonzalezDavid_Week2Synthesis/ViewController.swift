//
//  ViewController.swift
//  GonzalezDavid_Week2Synthesis
//
//  Created by David Gonzalez Jr on 12/4/17.
//  Copyright © 2017 David Gonzalez Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    var countryTotal: Int = 0
    var populationTotal: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "There are \(countryTotal) countries in the world with a total population of \(populationTotal)."

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goToSecond(sender: UIButton) {
        let tag = sender.tag
        switch tag{
        case 0:
            
        case 1:
            
        case 2:
            
        case 3:
            
        case 4:
            
        case 5:
            
        default:
            print("Either Case 2 was tapped, or something really bad happened!")
        }
        performSegue(withIdentifier: "toSecondViewController", sender: sender)
    }
    
}

