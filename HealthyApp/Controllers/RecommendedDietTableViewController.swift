//
//  RecommendedDietTableViewController.swift
//  HealthyApp
//
//  Created by Александр Касьянов on 30.03.2022.
//

import UIKit

class RecommendedDietTableViewController: UITableViewController {
    private let dishesList = Dish.getDish()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 150

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dishesList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "dish", for: indexPath)

        let dish = dishesList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = dish.title
        content.image = UIImage(named: dish.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 5
        cell.contentConfiguration = content

        return cell
    }
    

   
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsDishVC = segue.destination as? DetailsDishViewController else { return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        detailsDishVC.dish = dishesList[indexPath.row]
    }

}
