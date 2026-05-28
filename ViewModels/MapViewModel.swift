import Foundation
import MapKit
import Combine

class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {

    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 53.9006,
            longitude: 27.5590
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.2,
            longitudeDelta: 0.2
        )
    )

    @Published var routes: [BusRoute] = [

        BusRoute(
            title: "Minsk → Brest",
            city: "Minsk",
            latitude: 53.9006,
            longitude: 27.5590
        ),

        BusRoute(
            title: "Minsk → Gomel",
            city: "Gomel",
            latitude: 52.4345,
            longitude: 30.9754
        ),

        BusRoute(
            title: "Minsk → Grodno",
            city: "Grodno",
            latitude: 53.6694,
            longitude: 23.8131
        )
    ]

    let manager = CLLocationManager()

    override init() {
        super.init()

        manager.delegate = self
        manager.requestWhenInUseAuthorization()
    }
}
