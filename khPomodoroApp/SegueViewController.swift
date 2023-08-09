//
//  SegueViewController.swift
//  khPomodoroApp
//
//  Created by Kadir Hocaoğlu on 9.08.2023.
//

import UIKit

class SegueViewController: UIViewController {
    @IBOutlet var timeLabel: UILabel!
    var destinationData: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = timeFormatted(destinationData)
    }
    

    func timeFormatted(_ totalSeconds: Int) -> String {
            let seconds: Int = totalSeconds % 60
            let minutes: Int = (totalSeconds / 60) % 60
            let hours: Int = (totalSeconds / 3600) % 3600
            return String(format: "%02d:%02d:%02d",hours, minutes, seconds)
        }

}
