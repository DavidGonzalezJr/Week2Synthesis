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
    var continent: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "There are \(countryTotal) countries in the world with a total population of \(populationTotal)."

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! SecondViewController
        viewController.continent = self.continent
    }
    
    @IBAction func goToSecond(sender: UIButton) {
        
        let tag = sender.tag
        switch tag{
        case 0:
            continent = "Africa"
        case 1:
            continent = "Asia"
        case 2:
            continent = "Australia"
        case 3:
            continent = "Europe"
        case 4:
            continent = "North America"
        case 5:
            continent = "South America"
        default:
            print("Something really bad happened!")
        }
        performSegue(withIdentifier: "toSecondViewController", sender: sender)
    }
    
}

