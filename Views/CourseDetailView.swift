import SwiftUI

struct CourseDetailView: View {

    let course: Course

    var body: some View {

        ScrollView {

            VStack(alignment: .leading, spacing: 20) {

                Image(systemName: course.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)

                Text(course.title)
                    .font(.largeTitle)

                Text(
                    "\(NSLocalizedString("teacher", comment: "")): \(course.teacher)"
                )
                    .font(.headline)

                Text(course.description)

                Text(
                    NSLocalizedString("program", comment: "")
                )
                    .font(.title2)

                ForEach(course.program, id: \.self) { item in

                    Text("• \(item)")
                }
            }
            .padding()
        }
    }
}
