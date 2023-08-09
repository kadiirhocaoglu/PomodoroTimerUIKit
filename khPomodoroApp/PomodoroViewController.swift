//
//  PomodoroViewController.swift
//  khPomodoroApp
//
//  Created by Kadir Hocaoğlu on 8.08.2023.
//

import UIKit

class PomodoroViewController: UIViewController {
    @IBOutlet weak var hourTextField: UITextField!
    @IBOutlet weak var minuteTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    var sourceData: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    var countdown = 0
        
    @IBAction func timeSender(_ sender:UIButton) {
        if let hour = Int(hourTextField.text ?? "0"),
           let minute = Int(minuteTextField.text ?? "0"),
           let second = Int(secondTextField.text ?? "0") {
            sourceData = hour * 3600 + minute * 60 + second
            performSegue(withIdentifier: "goToSecondPage", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondPage" {
            if let destinationVC = segue.destination as? SegueViewController {
                destinationVC.destinationData = sourceData
            }
        }
    }
}
