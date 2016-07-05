//
//  Themoji_UITests.swift
//  Themoji-UITests
//
//  Created by Felix Krause on 05/07/16.
//  Copyright © 2016 Felix Krause. All rights reserved.
//

import XCTest

class Themoji_UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }

    func testExample() {
        snapshot("0Launch")
    }
    
}
