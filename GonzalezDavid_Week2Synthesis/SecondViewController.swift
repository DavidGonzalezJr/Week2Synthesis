//
//  SecondViewController.swift
//  GonzalezDavid_Week2Synthesis
//
//  Created by David Gonzalez Jr on 12/5/17.
//  Copyright © 2017 David Gonzalez Jr. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var continentName: UILabel!
    @IBOutlet weak var continentInfo: UITextView!
    var countryArray: [String] = []
    var countryTuple: (country: String, population: String) = ("", "")
    var continent: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continentName.text = continent
        // Do any additional setup after loading the view.
    }

    @IBAction func dismissViewController() {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToThird(_ sender: UIButton, forEvent event: UIEvent) {
        performSegue(withIdentifier: "toThirdViewController", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ThirdViewController
        viewController.countryTuple = self.countryTuple
    }
    
    @IBAction func saveCountryPop(segue: UIStoryboardSegue) {
        let viewController = segue.source as! ThirdViewController
        let countryNameString: String = viewController.countryName.text ?? "John"
        let countryPopulationString: String = viewController.countryPopulation.text ?? "Smith"
        countryArray += ["\(countryNameString) \(countryPopulationString)"]
        countryTuple = (countryNameString, countryPopulationString)
        var newCountryString: String = ""
        
        for countryPop in countryArray {
            newCountryString += "\(countryPop)\n"
        }
        continentInfo.text = newCountryString
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
