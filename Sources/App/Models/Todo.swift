import Vapor
import FluentPostgreSQL

/// A single entry of a Todo list.
final class Todo: PostgreSQLModel {
    /// The unique identifier for this `Todo`.
    var id: Int?

    /// A title describing what this `Todo` entails.
    var title: String
    
    /// A flag describing if this `Todo` is done.
    var done: Bool?

    /// Creates a new `Todo`.
    init(id: Int? = nil, title: String, done: Bool? = false) {
        self.id = id
        self.title = title
        self.done = false
    }
}

/// Allows `Todo` to be used as a dynamic migration.
extension Todo: Migration { }

/// Allows `Todo` to be encoded to and decoded from HTTP messages.
extension Todo: Content { }

/// Allows `Todo` to be used as a dynamic parameter in route definitions.
extension Todo: Parameter { }
