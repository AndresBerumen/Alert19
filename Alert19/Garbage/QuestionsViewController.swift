//
//  QuestionsViewController.swift
//  Alert19
//
//  Created by Andrés Berumen on 29/04/20.
//  Copyright © 2020 Andrés Berumen. All rights reserved.
//

import UIKit
import WebKit

class QuestionsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var yes = 0
    var no = 0
    var switches = ""
    var questions = ""
    var message = ""
    
    
    // MARK: Properties
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var switch4: UISwitch!
    @IBOutlet weak var yesButton1: UIButton!
    @IBOutlet weak var noButton1: UIButton!
    @IBOutlet weak var yesButton2: UIButton!
    @IBOutlet weak var noButton2: UIButton!
    @IBOutlet weak var yesButton3: UIButton!
    @IBOutlet weak var noButton3: UIButton!
    @IBOutlet weak var completo: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    
    
    // MARK: Actions
    @IBAction func yes1(_ sender: UIButton) {
        yes = yes + 1
        yesButton1.isHidden = true
        noButton1.isHidden = true
        if yesButton1.isHidden == true && yesButton2.isHidden == true &&  yesButton3.isHidden == true && noButton1.isHidden == true && noButton2.isHidden == true && noButton3.isHidden == true {
            completo.isHidden = false
        }
    }
    
    @IBAction func no1(_ sender: UIButton) {
        no = no + 1
        yesButton1.isHidden = true
        noButton1.isHidden = true
        if yesButton1.isHidden == true && yesButton2.isHidden == true &&  yesButton3.isHidden == true && noButton1.isHidden == true && noButton2.isHidden == true && noButton3.isHidden == true {
            completo.isHidden = false
        }
    }
    
    @IBAction func yes2(_ sender: UIButton) {
        yes = yes + 1
        yesButton2.isHidden = true
        noButton2.isHidden = true
        if yesButton1.isHidden == true && yesButton2.isHidden == true &&  yesButton3.isHidden == true && noButton1.isHidden == true && noButton2.isHidden == true && noButton3.isHidden == true {
            completo.isHidden = false
        }
    }
    
    @IBAction func no2(_ sender: UIButton) {
        no = no + 1
        yesButton2.isHidden = true
        noButton2.isHidden = true
        if yesButton1.isHidden == true && yesButton2.isHidden == true &&  yesButton3.isHidden == true && noButton1.isHidden == true && noButton2.isHidden == true && noButton3.isHidden == true {
            completo.isHidden = false
        }
    }
    
    @IBAction func yes3(_ sender: UIButton) {
        yes = yes + 1
        yesButton3.isHidden = true
        noButton3.isHidden = true
        if yesButton1.isHidden == true && yesButton2.isHidden == true &&  yesButton3.isHidden == true && noButton1.isHidden == true && noButton2.isHidden == true && noButton3.isHidden == true {
            completo.isHidden = false
        }
    }
    
    @IBAction func no3(_ sender: UIButton) {
        no = no + 1
        yesButton3.isHidden = true
        noButton3.isHidden = true
        if yesButton1.isHidden == true && yesButton2.isHidden == true &&  yesButton3.isHidden == true && noButton1.isHidden == true && noButton2.isHidden == true && noButton3.isHidden == true {
            completo.isHidden = false
        }
    }
    
    
    @IBAction func completedButton(_ sender: UIButton) {
        
        completo.isHidden = true
        messageLabel.isHidden = false
        if switch1.isOn == true && switch2.isOn == true && switch3.isOn == true && switch4.isOn == true {
            switches = "ultra1"
        } else if switch1.isOn == false && switch2.isOn == false && switch3.isOn == false && switch4.isOn == false {
            switches = "negative1"
        } else if switch1.isOn == true || switch2.isOn == true || switch3.isOn == true || switch4.isOn == true {
            switches = "positive1"
        }
        
        if yes == 1 || yes == 2 {
            questions = "positive2"
        } else if yes == 3 {
            questions = "ultra2"
        } else if yes == 0 {
            questions = "negative2"
        }
        
        if switches == "negative1" && questions == "negative2" {
            message = "Es muy improbable que tengas COVID 19. ¡Manténte así!"
        } else if switches == "positive1" && questions == "positive2" {
            message = "Por el momento, NO es necesario realizar alguna prueba. Debes permanecer en cuarentena al menos durante 14 días a partir de la última fecha de exposición."
        } else if switches == "ultra1" || questions == "ultra2" {
            message = "Tienes algunos síntomas. Si es posible, designa una habitación para ti solo. Comunícate con un prestador de servicios médicos. Se recomienda realizar prueba."
        }
        messageLabel.text = message
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
