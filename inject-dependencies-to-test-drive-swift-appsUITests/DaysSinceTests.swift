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

    func test_TappingTheDaysSincePlusButtonElevenOrMoreTimes_OnlyShowsTheTenMostRecentDaysSince() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertEqual(app.cells.count, 0)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 1)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 2)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 3)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 4)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 5)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 6)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 7)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 8)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 9)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 10)
        XCTAssert(app.cells.elementBoundByIndex(9).staticTexts["0"].exists)

        app.buttons["Add"].tap()

        XCTAssertEqual(app.cells.count, 10)
        XCTAssert(app.cells.elementBoundByIndex(9).staticTexts["1"].exists)
    }
}
