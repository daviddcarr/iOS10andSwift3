//
//  ProgressBarView.swift
//  ProgressBar
//
//  Created by David Carr on 11/1/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import UIKit

class ProgressBarView: UIView {

    private var _innerProgress: CGFloat = 0.0
    
    var progress: CGFloat {
        set (newProgress) {
            if newProgress > 1.0 {
                _innerProgress = 1.0
            } else if newProgress < 0.0 {
                _innerProgress = 0.0
            } else {
                _innerProgress = newProgress
            }
            setNeedsDisplay()
        }
        get {
            return _innerProgress * bounds.width
        }
    }
    
    override func draw(_ rect: CGRect) {
        ProgressBarDraw.drawProgressBar(frame: bounds, progress: progress)
    }

}
