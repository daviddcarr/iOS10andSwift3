//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by David Carr on 11/4/16.
//  Copyright © 2016 carrtoonist. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {
    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        
        self.created = NSDate()
    }
    
}
