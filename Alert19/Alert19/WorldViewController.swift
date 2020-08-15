//
//  WorldViewController.swift
//  Alert19
//
//  Created by Andrés Berumen on 27/04/20.
//  Copyright © 2020 Andrés Berumen. All rights reserved.
//

import UIKit

class WorldViewController: UIViewController, CovidManagerDelegate {
    
    
    
    // MARK: Outlets
    @IBOutlet weak var worldCases: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        worldCases.text = String(stats)
        
    }
    
    
    var stats = 1
    
    // MARK: Actions
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    
    // COVID ManagerDeleagate
    func didFailWithError(error: Error) {
        print("error")
    }
    
    func didUpdate(_ covidManager: CovidManager, covid: Int) {
        DispatchQueue.main.async {
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
