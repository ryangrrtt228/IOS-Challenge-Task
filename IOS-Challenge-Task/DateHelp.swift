//
//  DateHelp.swift
//  IOS-Challenge-Task
//
//  Created by Batman on 4/15/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import Foundation


extension NSDate {
    
    func stringValue() -> String {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        
        return formatter.stringFromDate(self)
    }
    
}