//
//  Dish.swift
//  HealthyApp
//
//  Created by Александр Касьянов on 30.03.2022.
//

import Foundation

struct Dish {
    let title: String
    let ingridients: [String]
    
    static func getDish() -> [Dish] {
        [
            Dish(title: "Turkey stewed in coconut milk",
                 ingridients: ["Turkey breast", "Chilli", "Champignon mushrooms",
                               "Jasmine rice", "Coconut milk", "Fish sauce",
                               "Onion", "Cilantro", "Coconut oil"]),
            Dish(title: "Salad Treasures of the Nation",
                 ingridients: ["Pumpkin", "Lime juice", "Mexican spices set",
                               "Tiger shrimp", "Red quinoa", "Fresh greens",
                               "Chilli"]),
            Dish(title: "Salmon steaks with roasted carrot hummus",
                 ingridients: ["Sunflower seeds", "Orange oil",
                               "Salmon fillet", "Garlic", "Chips nachos", "Carrot",
                               "Soy sauce", "Fresh greens", "White sesame",
                               "Ricotta cheese", "Olives", "Miso paste"]),
            Dish(title: "Vegan soup with shiitake mushrooms",
                 ingridients: ["Paprika", "Tofu silk", "Sesame oil",
                               "Carrot", "Ginger", "Potato",
                               "Fresh greens", "Smoked paprika", "White sesame",
                               "Seaweed nori", "Soy sauce", "Shiitake mushrooms"]),
            Dish(title: "Creamy pumpkin soup with tandoori chicken",
                 ingridients: ["Chicken breast", "Pumpkin", "Seasoning Tandoori",
                               "Tomatoes in their own juice", "Fresh greens",
                               "Leek", "Lime juice", "Fish sauce",
                               "Chicken bouillon"]),
            Dish(title: "Lentils with roasted fennel",
                 ingridients: ["Zaatar Spice Blend", "Fennel", "Dried tomatoes",
                               "Carrot", "Lentils", "Parsley", "Pumpkin seed oil",
                               "Onion"]),
            Dish(title: "Baked pike perch in parmesan breading",
                 ingridients: ["Spicy paprika", "Paprika", "Pesto",
                               "Cauliflower", "Fresh greens", "Green pea",
                               "Parmesan", "Pike perch fillet"]),
            Dish(title: "Mexican stew with quinoa and red beans",
                 ingridients: ["Tomatoes in their own juice", "Quinoa", "Onion",
                               "Cinnamon", "Bell pepper", "Cilantro",
                               "Carrot", "Garlic", "Zaatar Spice Blend", "Beans"])
        ]
    }
    
}
