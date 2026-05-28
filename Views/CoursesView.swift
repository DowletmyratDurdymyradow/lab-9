import SwiftUI

struct CoursesView: View {

    @StateObject var vm = CourseViewModel()

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        NavigationStack {

            ScrollView {

                LazyVGrid(columns: columns, spacing: 20) {

                    ForEach(vm.courses) { course in

                        NavigationLink {

                            CourseDetailView(course: course)

                        } label: {

                            VStack(spacing: 15) {

                                Image(systemName: course.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)

                                Text(course.title)
                                    .font(.headline)

                                Text(course.teacher)
                                    .font(.caption)
                                Button {

                                    vm.addFavorite(course)

                                } label: {

                                    Image(
                                        systemName:
                                            vm.isFavorite(course)
                                            ? "heart.fill"
                                            : "heart"
                                    )
                                    .foregroundColor(.red)
                                }
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(20)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(
                NSLocalizedString("courses", comment: "")
            )
        }
    }
}
