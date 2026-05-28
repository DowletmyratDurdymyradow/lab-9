import Testing
@testable import OnlineCoursesBusBooking

@MainActor
struct OnlineCoursesBusBookingTests {

    @Test
    func testCoursesLoading() async throws {
        let courses = CourseService.loadCourses()
        #expect(courses.count > 0)
    }

    @Test
    func testFirstCourseTitle() async throws {
        let courses = CourseService.loadCourses()
        #expect(courses[0].title == "iOS Development")
    }

    @Test
    func testSecondCourseTitle() async throws {
        let courses = CourseService.loadCourses()
        #expect(courses[1].title == "UI UX Design")
    }

    @Test
    func testCoursesCount() async throws {
        let courses = CourseService.loadCourses()
        #expect(courses.count == 2)
    }

    @Test
    func testFirstTeacher() async throws {
        let courses = CourseService.loadCourses()
        #expect(courses[0].teacher == "John Smith")
    }

    @Test
    func testSecondTeacher() async throws {
        let courses = CourseService.loadCourses()
        #expect(courses[1].teacher == "Anna Lee")
    }

    @Test
    func testCourseDescriptionNotEmpty() async throws {
        let courses = CourseService.loadCourses()
        #expect(!courses[0].description.isEmpty)
    }

    @Test
    func testCourseProgramNotEmpty() async throws {
        let courses = CourseService.loadCourses()
        #expect(!courses[0].program.isEmpty)
    }

    @Test
    func testImageExists() async throws {
        let courses = CourseService.loadCourses()
        #expect(!courses[0].image.isEmpty)
    }

    @Test
    func testTeacherExists() async throws {
        let courses = CourseService.loadCourses()
        #expect(!courses[1].teacher.isEmpty)
    }
}
