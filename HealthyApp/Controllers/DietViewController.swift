//
//  DietViewController.swift
//  HealthyApp
//
//  Created by Daniil on 2.04.22.
//

import UIKit

class DietViewController: UIViewController {
    
    @IBOutlet weak var consumptionLabel: UILabel!
    @IBOutlet weak var recommendedLabel: UILabel!
    
    @IBOutlet weak var consumptionView: UIView!
    @IBOutlet weak var recommendedView: UIView!
    @IBOutlet weak var dishesView: UIView!
    
    var person = Person.getPersonData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: .green, bottomColor: .blue)
        
        consumptionLabel.text = String(Int.random(in: 1000...3000))
        recommendedLabel.text = String(
            Int(10.0 * Double(person.person.weight) + 6.25 * Double(person.person.height) - 5.0 * Double(person.person.age))
        )

        dishesView.layer.cornerRadius = dishesView.bounds.height / 5
    }
    
    @IBAction func dishesButtonPressed() {
        print("Здесь должен быть сегвей")
        
    }
}

//MARK: - UIView Extensions

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        let firstColor = UIColor(
            red: 52/255,
            green: 137/255,
            blue: 235/255,
            alpha: 1
        )
        let secondColor = UIColor(
            red: 52/255,
            green: 235/255,
            blue: 116/255,
            alpha: 1
        )
        gradient.frame = bounds
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0.45, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        layer.insertSublayer(gradient, at: 0)
    }
}

