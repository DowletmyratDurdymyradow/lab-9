import Testing
@testable import OnlineCoursesBusBooking

struct OnlineCoursesBusBookingTests {

    @Test func testCoursesLoading() async throws {

        let courses = CourseService.loadCourses()

        #expect(courses.count > 0)

        #expect(courses[0].title == "iOS Development")
    }
}
