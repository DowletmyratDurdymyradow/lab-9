import Foundation
import Combine

class CourseViewModel: ObservableObject {

    @Published var courses: [Course] = []

    @Published var favorites: [String] = []

    init() {
        loadCourses()
        loadFavorites()
    }

    func loadCourses() {
        courses = CourseService.loadCourses()
    }

    func addFavorite(_ course: Course) {

        if favorites.contains(course.title) {

            favorites.removeAll {
                $0 == course.title
            }

        } else {

            favorites.append(course.title)
        }

        UserDefaults.standard.set(
            favorites,
            forKey: "favorites"
        )
    }

    func loadFavorites() {

        favorites = UserDefaults.standard.stringArray(
            forKey: "favorites"
        ) ?? []
    }

    func isFavorite(_ course: Course) -> Bool {

        favorites.contains(course.title)
    }
}
