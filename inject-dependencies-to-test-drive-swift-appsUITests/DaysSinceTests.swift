import XCTest

class DaysSinceTests: XCTestCase {

    func test_LaunchingTheApp_ShowsADaysSinceTable() {
        let app = XCUIApplication()
        app.launch()

        XCTAssert(app.navigationBars["Days Since"].exists)
        XCTAssertEqual(app.tables.count, 1)
        XCTAssertEqual(app.cells.count, 0)
        XCTAssert(app.buttons["Add"].exists)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 1)
        XCTAssert(app.cells.elementBoundByIndex(0).staticTexts["0"].exists)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 2)
        XCTAssert(app.cells.elementBoundByIndex(0).staticTexts["1"].exists)
        XCTAssert(app.cells.elementBoundByIndex(1).staticTexts["0"].exists)
    }
}
