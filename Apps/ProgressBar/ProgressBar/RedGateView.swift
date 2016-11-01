//
//  RedGateView.swift
//  ProgressBar
//
//  Created by David Carr on 11/1/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import UIKit

class RedGateView: UIView {

    private var _leftAngle: CGFloat = 0.0
    private var _rightAngle: CGFloat = 0.0
    
    var progressLeft: CGFloat {
        set (newProgress) {
            if newProgress > 1.0 {
                _leftAngle = 1.0
            } else if newProgress < 0.0 {
                _leftAngle = 0.0
            } else {
                _leftAngle = newProgress
            }
            setNeedsDisplay()
        }
        get {
            return _leftAngle * 90
        }
    }
    
    var progressRight: CGFloat {
        set (newProgress) {
            if newProgress > 1.0 {
                _rightAngle = 1.0
            } else if newProgress < 0.0 {
                _rightAngle = 0.0
            } else {
                _rightAngle = newProgress
            }
            setNeedsDisplay()
        }
        get {
            return _rightAngle * -90
        }
    }
    
    override func draw(_ rect: CGRect) {
        RedGateDraw.drawRedGate(frame: bounds, leftGateAngle: progressLeft, rightGateAngle: progressRight)
    }

}
