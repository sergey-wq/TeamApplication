//
//  ExerciseStressViewController.swift
//  HealthyApp
//
//  Created by Виталий Бобрик on 3.04.22.
//

import UIKit

class ExerciseStressViewController: UIViewController {

    @IBOutlet var greyView: UIView!

    @IBOutlet var images: [UIImageView]!

    var numberworkout: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        greyView.layer.cornerRadius = 20
        
        for image in images {
            image.layer.cornerRadius = 20
        }
        
        setImage(for: numberworkout)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let openImageVC = segue.destination as? OpenImageEXViewController else {return}
        guard let button = sender as? UIButton else {return}
        openImageVC.image = images[button.tag].image
    }
    
    private func setImage(for workout: Int) {
        
        switch workout {
        case 1:
            setImageWorkoutOne()
            super.navigationItem.title = "Running"
        case 2:
            setImageWorkoutTwo()
            super.navigationItem.title = "Apparaturs"
        default:
            setImageWorkoutThree()
            super.navigationItem.title = "Dumbbells"
        }
        
    }
    
    private func setImageWorkoutOne() {
        for index in 1...images.count {
            images[index-1].image = UIImage(named: "Run\(index)")
        }
    }
    
    private func setImageWorkoutTwo() {
        for index in 1...images.count {
            images[index-1].image = UIImage(named: "App\(index)")
        }
    }
    
    private func setImageWorkoutThree() {
        for index in 1...images.count {
            images[index-1].image = UIImage(named: "Dum\(index)")
        }
    }
}
