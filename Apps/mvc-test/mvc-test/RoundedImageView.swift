//
//  RoundedImageView.swift
//  mvc-test
//
//  Created by David Carr on 10/31/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
