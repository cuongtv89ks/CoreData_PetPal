//
//  Friend+CoreDataClass.swift
//  PetPal
//
//  Created by Olive Union on 23/10/2018.
//  Copyright © 2018 Razeware. All rights reserved.
//
//

import Foundation
import CoreData


public class Friend: NSManagedObject {
    var age: Int {
        if let dob = dob as Date? {
            return Calendar.current.dateComponents([.year], from: dob, to: Date()).year!
        }
        return 0
    }
}
