import FluentSQLite
import Vapor

/// A Restaurant
final class Restaurant: SQLiteModel {
	var id: Int?
	var name: String
	var address: Address
	var imageUrl: URL?
	
	init(id: Int? = nil, name: String, address: Address, imageUrl: URL? = nil) {
		self.id = id
		self.name = name
		self.address = address
		self.imageUrl = imageUrl
	}
}

/// Allows dynamic migration.
extension Restaurant: Migration { }

/// Allows encoded to and decoded from HTTP messages.
extension Restaurant: Content { }

/// Allows dynamic parameter in route definitions.
extension Restaurant: Parameter { }
