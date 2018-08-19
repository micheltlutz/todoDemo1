import Foundation


/// A single entry of a Todo list.
final class Todo: Codable {
    /// The unique identifier for this `Todo`.
    var id: Int?

    /// A title describing what this `Todo` entails.
    var title: String
    
    /// A flag describing if this `Todo` is done.
    var done: Bool?
    
    var idadeCanina: Int?

    /// Creates a new `Todo`.
    init(id: Int? = nil, title: String, done: Bool? = false) {
        self.id = id
        self.title = title
        self.done = false
    }
}



//    enum TodoKeys: String, CodingKey {
//        case id = "id"
//        case title = "title"
//        case done = "done"
//    }
//
//    convenience init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: TodoKeys.self) // defining our (keyed) container
//        let id: Int = try container.decode(Int.self, forKey: .id) // extracting the data
//        let title: String = try container.decode(String.self, forKey: .title) // extracting the data
//        let done: Bool = try container.decode(Bool.self, forKey: .done) // extracting the data
//        self.init(id: id, title: title, done: done)
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: TodoKeys.self)
//        try container.encode(id, forKey: .id)
//        try container.encode(title, forKey: .title)
//        try container.encode(done, forKey: .done)
//    }
