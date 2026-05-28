import SwiftUI

@main
struct OnlineCoursesBusBookingApp: App {

    var body: some Scene {

        WindowGroup {

            TabView {

                CoursesView()
                    .tabItem {
                        Label("Courses", systemImage: "book")
                    }

                NavigationStack {

                    BusMapView()

                }
                .tabItem {
                    Label("Routes", systemImage: "map")
                }
            }
        }
    }
}
