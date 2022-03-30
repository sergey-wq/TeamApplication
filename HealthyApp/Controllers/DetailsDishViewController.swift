//
//  DetailsDishViewController.swift
//  HealthyApp
//
//  Created by Александр Касьянов on 30.03.2022.
//

import UIKit



class DetailsDishViewController: UIViewController {
    
    @IBOutlet var dishImage: UIImageView!
    @IBOutlet var tableView: UITableView!
    
    var dish: Dish!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dishImage.image = UIImage(named: dish.title)
        tableView.rowHeight = 80
        
    }
}


extension DetailsDishViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dish.ingridients.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Состав блюда:"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ingredients details", for: indexPath)
        
        let dishIngridient = dish.ingridients[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = dishIngridient.description
        content.image = UIImage(named: dishIngridient.description)
        content.imageProperties.cornerRadius = tableView.rowHeight / 5
        cell.contentConfiguration = content
        return cell
    }
    
    
}
