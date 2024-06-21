//
//  ViewController.swift
//  MedSched
//
//  Created by Nicole Groeger on 2024-05-31.
//

import UIKit

class MedSchedViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
// MARK: - Table View Data Source
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return 5
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ChecklistItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "Medication 1"
        } else if indexPath.row == 1 {
            label.text = "Medication 2"
        } else if indexPath.row == 2 {
            label.text = "Medication 3"
        } else if indexPath.row == 3 {
            label.text = "Medication 4"
        } else if indexPath.row == 4 {
            label.text = "Medication 5"
        }
        
        return cell
    }

    // MARK: - Table View Delegate
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        // toggling checkmark on/off
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        // selects/deselects rows
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

