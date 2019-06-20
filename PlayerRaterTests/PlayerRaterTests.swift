//
//  PlayerRaterTests.swift
//  PlayerRaterTests
//
//  Created by Jorge Alejandro Raad on 6/12/19.
//  Copyright © 2019 Jorge Alejandro Raad. All rights reserved.
//

import XCTest
@testable import PlayerRater

class PlayerRaterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // MARK: Player Class Tests
    func testPlayerInitializationSucceeds() {
        // 0 rating
        let zeroRatingPlayer = Player.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingPlayer)
        
        // Highest positive rating
        let positiveRatingPlayer = Player.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingPlayer)
        
        // Rating above max
        let largeRatingPlayer = Player.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingPlayer)
        
        // Negative rating
        let negativeRatingPlayer = Player.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingPlayer)
        
        // Empty Name
        let emptyNamePlayer = Player.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyNamePlayer)

    }

}
