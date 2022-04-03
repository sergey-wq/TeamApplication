//
//  ExerciseSressTableViewController.swift
//  HealthyApp
//
//  Created by Виталий Бобрик on 3.04.22.
//

import UIKit

class ExerciseSressTableViewController: UITableViewController {

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = "workout \(indexPath.row + 1)"
        if indexPath.row == 0 {
            content.image = UIImage(named: "Running")
        } else if indexPath.row == 1 {
            content.image = UIImage(named: "Apparaturs")
        } else {
            content.image = UIImage(named: "dumbbells")
        }
       
        let myAttributed: NSMutableAttributedString = {
            let color: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.blue]
            let backColor = NSMutableAttributedString(string: content.text ?? "", attributes: color)
            return backColor
        }()
        
        content.attributedText = myAttributed
        
        cell.contentConfiguration = content
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let exerciseStressVC = segue.destination as? ExerciseStressViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        exerciseStressVC.numberworkout = indexPath.row + 1
    }
    
}

extension ExerciseSressTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
}
