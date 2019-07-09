//
//  FastlaneStudyUITests.swift
//  FastlaneStudyUITests
//
//  Created by Min on 12/05/2019.
//  Copyright © 2019 seongmin. All rights reserved.
//

import XCTest

class FastlaneStudyUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        

        snapshot("firstScreen")
        let app = XCUIApplication()
        app.buttons["첫번째"].tap()
        snapshot("secondScreen")
        app.buttons["두번째"].tap()
        snapshot("thirdScreen")
        app.buttons["세번째"].tap()
        
        
        
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
