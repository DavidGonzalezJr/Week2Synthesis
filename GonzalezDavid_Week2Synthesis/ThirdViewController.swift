//
//  ThirdViewController.swift
//  GonzalezDavid_Week2Synthesis
//
//  Created by David Gonzalez Jr on 12/5/17.
//  Copyright © 2017 David Gonzalez Jr. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var countryName: UITextField!
    @IBOutlet weak var countryPopulation: UITextField!
    var countryTuple: (country: String, population: String) = ("", "")

    override func viewDidLoad() {
        super.viewDidLoad()

        countryName.text = countryTuple.country
        countryPopulation.text = countryTuple.population
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if countryName.text == "" || countryPopulation.text == "" {
            return false
        }
        return true
    }
    
    @IBAction func dismissViewController() {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
