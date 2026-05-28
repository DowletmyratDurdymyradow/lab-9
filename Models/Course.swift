import Foundation

struct Course: Identifiable, Codable {

    var id = UUID()

    var title: String
    var image: String
    var teacher: String
    var description: String
    var program: [String]

    enum CodingKeys: String, CodingKey {
        case title
        case image
        case teacher
        case description
        case program
    }
}
