//
//  ViewController.swift
//  CoutnDownTimerWithPod
//
//  Created by Tejesh singh on 09/08/22.
//

import UIKit
import MagicTimer

class ViewController: UIViewController {

    @IBOutlet weak var timer: MagicTimerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer.mode = .stopWatch
        timer.delegate = self
    }
    
    @IBAction func startTimer(_ sender: Any) {
        timer.startCounting()
    }
    
    
    @IBAction func stopTimer(_ sender: Any) {
        timer.stopCounting()    }
    
    @IBAction func resetTimer(_ sender: Any) {
        timer.reset()
    }
}

extension ViewController: MagicTimerViewDelegate {
    
    func timerElapsedTimeDidChange(timer: MagicTimerView, elapsedTime: TimeInterval) {
        //print(elapsedTime)
    }
}

