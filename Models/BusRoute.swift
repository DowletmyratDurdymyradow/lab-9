import Foundation
import CoreLocation

struct BusRoute: Identifiable {

    let id = UUID()

    let title: String
    let city: String
    let latitude: Double
    let longitude: Double
}
