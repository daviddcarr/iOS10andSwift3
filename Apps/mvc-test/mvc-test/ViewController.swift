//
//  ViewController.swift
//  mvc-test
//
//  Created by David Carr on 10/31/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var renameField: UITextField!
    
    let person = Person(first: "Johnny", last: "Hancook")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Do not do: fullName.text = "\(person.firstName) \(person.lastName)" should be processed in Model files
        fullName.text = person.fullName
    }
    
    @IBAction func renamePressed(_ sender: Any) {
        if let txt = renameField.text {
            person.firstName = txt
            fullName.text = person.fullName
        }
    }

}

