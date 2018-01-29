//
//  Meal.swift
//  FoodTracker
//
//  Created by Jingwen Zhang on 1/29/18.
//  Copyright © 2018 yxu. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Functions
    init?(name: String, photo: UIImage?, rating: Int) {
        if(name.isEmpty) {
            return nil
        }
        if(rating > 5 || rating < 0) {
            return nil
        }
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
