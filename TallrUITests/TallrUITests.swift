//
//  TallrUITests.swift
//  TallrUITests
//
//  Created by Felipe Borges on 29/07/24.
//

import XCTest

final class TallrUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        
        let app = XCUIApplication()
        app.launch()

        
        XCTAssert(app.staticTexts["0"].isHittable)
        
        let staticText = app/*@START_MENU_TOKEN@*/.staticTexts["+"]/*[[".buttons[\"+\"].staticTexts[\"+\"]",".staticTexts[\"+\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText.tap()
        staticText.tap()
        
        XCTAssert(app.staticTexts["2"].isHittable)

        let button = app.buttons["-"]
        button.tap()
        button.tap()
        
        XCTAssert(app.staticTexts["0"].isHittable)
        
        // UI tests must launch the application that they test.

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
