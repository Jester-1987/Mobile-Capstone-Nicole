//
//  Checklist.swift
//  MedSched
//
//  Created by Nicole Groeger on 2024-09-06.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }

}
