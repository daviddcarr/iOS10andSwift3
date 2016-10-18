//
//  ViewController.swift
//  MiraclePill
//
//  Created by David Carr on 10/12/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var pillCostLabel: UILabel!
    @IBOutlet weak var horizontalLine: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetField: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipField: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    
    let states = [ "AK - Alaska",
                  "AL - Alabama",
                  "AR - Arkansas",
                  "AS - American Samoa",
                  "AZ - Arizona",
                  "CA - California",
                  "CO - Colorado",
                  "CT - Connecticut",
                  "DC - District of Columbia",
                  "DE - Delaware",
                  "FL - Florida",
                  "GA - Georgia",
                  "GU - Guam",
                  "HI - Hawaii",
                  "IA - Iowa",
                  "ID - Idaho",
                  "IL - Illinois",
                  "IN - Indiana",
                  "KS - Kansas",
                  "KY - Kentucky",
                  "LA - Louisiana",
                  "MA - Massachusetts",
                  "MD - Maryland",
                  "ME - Maine",
                  "MI - Michigan",
                  "MN - Minnesota",
                  "MO - Missouri",
                  "MS - Mississippi",
                  "MT - Montana",
                  "NC - North Carolina",
                  "ND - North Dakota",
                  "NE - Nebraska",
                  "NH - New Hampshire",
                  "NJ - New Jersey",
                  "NM - New Mexico",
                  "NV - Nevada",
                  "NY - New York",
                  "OH - Ohio",
                  "OK - Oklahoma",
                  "OR - Oregon",
                  "PA - Pennsylvania",
                  "PR - Puerto Rico",
                  "RI - Rhode Island",
                  "SC - South Carolina",
                  "SD - South Dakota",
                  "TN - Tennessee",
                  "TX - Texas",
                  "UT - Utah",
                  "VA - Virginia",
                  "VI - Virgin Islands",
                  "VT - Vermont",
                  "WA - Washington",
                  "WI - Wisconsin",
                  "WV - West Virginia", 
                  "WY - Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        
        countryField.isHidden = true
        countryLabel.isHidden = true
        zipField.isHidden = true
        zipLabel.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal) //UIControlState()
        statePicker.isHidden = true
        
        countryField.isHidden = false
        countryLabel.isHidden = false
        zipField.isHidden = false
        zipLabel.isHidden = false
    }
    
    @IBAction func buyNowBtn(_ sender: AnyObject) {
        pillImage.isHidden = true
        pillLabel.isHidden = true
        pillCostLabel.isHidden = true
        horizontalLine.isHidden = true
        nameField.isHidden = true
        nameLabel.isHidden = true
        streetLabel.isHidden = true
        streetField.isHidden = true
        cityLabel.isHidden = true
        cityField.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        countryField.isHidden = true
        countryLabel.isHidden = true
        zipField.isHidden = true
        zipLabel.isHidden = true
        buyNowBtn.isHidden = true
        
        successImage.isHidden = false
    }
}

