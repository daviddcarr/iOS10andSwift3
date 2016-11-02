//
//  SpinningCirclesView.swift
//  ProgressBar
//
//  Created by David Carr on 11/1/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import UIKit

class SpinningCirclesView: UIView {

    private var _redAngle: CGFloat = 0.0
    private var _greenAngle: CGFloat = 0.0
    private var _blueAngle: CGFloat = 0.0
    private var _yellowAngle: CGFloat = 0.0
    
    var redAngle: CGFloat {
        set (newAngle) {
            if newAngle > 1.0 {
                _redAngle = 1.0
            } else if newAngle < 0.0 {
                _redAngle = 0.0
            } else {
                _redAngle = newAngle
            }
            setNeedsDisplay()
        }
        get {
            return _redAngle * 180
        }
    }
    
    var blueAngle: CGFloat {
        set (newAngle) {
            if newAngle > 1.0 {
                _blueAngle = 1.0
            } else if newAngle < 0.0 {
                _blueAngle = 0.0
            } else {
                _blueAngle = newAngle
            }
            setNeedsDisplay()
        }
        get {
            return _blueAngle * 180
        }
    }
    
    var greenAngle: CGFloat {
        set (newAngle) {
            if newAngle > 1.0 {
                _greenAngle = 1.0
            } else if newAngle < 0.0 {
                _greenAngle = 0.0
            } else {
                _greenAngle = newAngle
            }
            setNeedsDisplay()
        }
        get {
            return _greenAngle * 180
        }
    }
    
    var yellowAngle: CGFloat {
        set (newAngle) {
            if newAngle > 1.0 {
                _yellowAngle = 1.0
            } else if newAngle < 0.0 {
                _yellowAngle = 0.0
            } else {
                _yellowAngle = newAngle
            }
            setNeedsDisplay()
        }
        get {
            return _yellowAngle * 180
        }
    }
    
    override func draw(_ rect: CGRect) {
        SpinningCirclesDraw.drawSpinningCircles(frame: bounds, yellowAngle: yellowAngle, blueAngle: blueAngle, greenAngle: greenAngle, redAngle: redAngle)
    }
}
