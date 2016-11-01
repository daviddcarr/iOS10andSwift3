//
//  ProgressBarDraw.swift
//  ProgressBar
//
//  Created by Carrtoonist on 11/1/16.
//  Copyright © 2016 CompanyName. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//
//  This code was generated by Trial version of PaintCode, therefore cannot be used for commercial purposes.
//



import UIKit

public class ProgressBarDraw : NSObject {

    //// Drawing Methods

    public dynamic class func drawProgressBar(frame: CGRect = CGRect(x: 0, y: 0, width: 300, height: 16), progress: CGFloat = 300) {
        //// General Declarations
        // This non-generic function dramatically improves compilation times of complex expressions.
        func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }

        //// Progress Border Drawing
        let progressBorderPath = UIBezierPath(roundedRect: CGRect(x: frame.minX + 1, y: frame.minY + 1, width: fastFloor((frame.width - 1) * 0.99666 + 0.5), height: 14), cornerRadius: 7)
        UIColor.red.setStroke()
        progressBorderPath.lineWidth = 1
        progressBorderPath.stroke()


        //// Progress Active Drawing
        let progressActivePath = UIBezierPath(roundedRect: CGRect(x: 1, y: 1, width: progress, height: 14), cornerRadius: 7)
        UIColor.red.setFill()
        progressActivePath.fill()
    }

}
