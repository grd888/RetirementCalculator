//
//  RetirementCalculatorUITests.swift
//  RetirementCalculatorUITests
//
//  Created by Greg on 5/8/20.
//  Copyright © 2020 Greg Delgado. All rights reserved.
//

import XCTest

class RetirementCalculatorUITests: XCTestCase {

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
        // UI tests must launch the application that they test.
        
        XCTContext.runActivity(named: "screenshot") { (activity) in
            
            
            let app = XCUIApplication()
            app.launch()
            
            let monthlyInvestmentsTextField = app.textFields["Monthly investments"]
            monthlyInvestmentsTextField.tap()
            monthlyInvestmentsTextField.tap()
            
            let key = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key.tap()
            
            let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key2.tap()
            key2.tap()
            
            app.textFields["Your current age"].tap()
            
            let key3 = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key3.tap()
            
            let key4 = app/*@START_MENU_TOKEN@*/.keys["6"]/*[[".keyboards.keys[\"6\"]",".keys[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key4.tap()
            app.textFields["Your planned retirement age"].tap()
            key4.tap()
            key3.tap()
            app.textFields["Average interest rate of investments"].tap()
            
            let key5 = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key5.tap()
            app.textFields["Current savings"].tap()
            key2.tap()
            app/*@START_MENU_TOKEN@*/.staticTexts["Calculate retirement amount"]/*[[".buttons[\"Calculate retirement amount\"].staticTexts[\"Calculate retirement amount\"]",".staticTexts[\"Calculate retirement amount\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            
            let resultText = app.staticTexts.element(matching: .any, identifier: "resultLabel")
            let result = "If you save $100.0 every month for 9 years, and invest that money plus your current investment of $0.0 at a 4.0% anual interest rate, you will have $13017.392178852759 by the time you are 65"
            XCTAssertEqual(resultText.label, result)
        }
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}

