//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jingwen Zhang on 1/25/18.
//  Copyright © 2018 yxu. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: Meal class tests
    func testMealInitiailzationSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    // Confirm that the Meal initializer returns nil when passed a negative rating or an empty name
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "negativeRatingMeal", photo: nil, rating: -3)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        let emptyNameMeal = Meal.init(name: "", photo: nil, rating: 5)
        XCTAssertNil(emptyNameMeal)
    }
    
}
