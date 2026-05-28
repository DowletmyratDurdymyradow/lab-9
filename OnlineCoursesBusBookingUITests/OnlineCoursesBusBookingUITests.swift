import XCTest

final class OnlineCoursesBusBookingUITests: XCTestCase {

    func testAppLaunch() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertEqual(app.state, .runningForeground)
    }

    func testIOSCourseExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.staticTexts["iOS Development"].exists)
    }

    func testDesignCourseExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.staticTexts["UI UX Design"].exists)
    }

    func testTeacherJohnExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.staticTexts["John Smith"].exists)
    }

    func testTeacherAnnaExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.staticTexts["Anna Lee"].exists)
    }

    func testRoutesTabExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.buttons["Routes"].exists)
    }

    func testCoursesTabExists() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.buttons["Courses"].exists)
    }

    func testOpenRoutesTab() {
        let app = XCUIApplication()
        app.launch()

        app.buttons["Routes"].tap()

        XCTAssertTrue(app.buttons["Courses"].exists)
    }

    func testAppState2() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.exists)
    }

    func testAppState3() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertEqual(app.state, .runningForeground)
    }
}
