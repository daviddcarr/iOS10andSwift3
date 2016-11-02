//
//  ViewController.swift
//  ProgressBar
//
//  Created by David Carr on 11/1/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBarView: ProgressBarView!
    @IBOutlet weak var redGateView: RedGateView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var spinningCirclesView: SpinningCirclesView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderMoved(_ sender: Any) {
        progressBarView.progress = CGFloat(slider.value)
        redGateView.progressLeft = CGFloat(slider.value)
        redGateView.progressRight = CGFloat(slider.value)
        
        spinningCirclesView.blueAngle = CGFloat(slider.value)
        spinningCirclesView.redAngle = CGFloat(slider.value)
        spinningCirclesView.yellowAngle = CGFloat(slider.value)
        spinningCirclesView.greenAngle = CGFloat(slider.value)
    }

}
