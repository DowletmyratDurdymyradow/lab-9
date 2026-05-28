import SwiftUI
import MapKit

struct BusMapView: View {

    @StateObject var vm = MapViewModel()

    var body: some View {

        VStack {

            Map(coordinateRegion: $vm.region,
                annotationItems: vm.routes) { route in

                MapMarker(
                    coordinate: CLLocationCoordinate2D(
                        latitude: route.latitude,
                        longitude: route.longitude
                    )
                )
            }
            .frame(height: 350)

            List(vm.routes) { route in

                VStack(alignment: .leading) {

                    Text(route.title)
                        .font(.headline)

                    Text(route.city)
                        .font(.caption)
                }
            }
        }
        .navigationTitle(
            NSLocalizedString("routes", comment: "")
        )
    }
}
