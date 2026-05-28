import Foundation

class CourseService {

    static func loadCourses() -> [Course] {

        print("START LOADING")

        guard let url = Bundle.main.url(forResource: "Courses", withExtension: "plist") else {

            print("PLIST NOT FOUND")
            return []
        }

        print(url)

        guard let data = try? Data(contentsOf: url) else {

            print("DATA ERROR")
            return []
        }

        guard let courses = try? PropertyListDecoder().decode([Course].self, from: data) else {

            print("DECODE ERROR")
            return []
        }

        print(courses)

        return courses
    }
}
