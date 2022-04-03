//
//  OpenImageEXViewController.swift
//  HealthyApp
//
//  Created by Виталий Бобрик on 3.04.22.
//

import UIKit

class OpenImageEXViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
   var image: UIImage!
   // var indexImages:Int!
   // var images: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
        
    }
    

}
