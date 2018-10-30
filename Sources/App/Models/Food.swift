import FluentSQLite
import Vapor

/// A Food to Review
final class Food: SQLiteModel {
	var id: Int?
	var name: String
	var restaurant: Restaurant
	var price: Double?
	var imageUrl: URL?
	
	init(id: Int? = nil, name: String, restaurant: Restaurant, price: Double? = nil, imageUrl: URL? = nil) {
		self.id = id
		self.name = name
		self.restaurant = restaurant
		self.price = price
		self.imageUrl = imageUrl
	}
}

/// Allows dynamic migration.
extension Food: Migration { }

/// Allows encode to and decode from HTTP messages.
extension Food: Content { }

/// Allows dynamic parameter in route definitions.
extension Food: Parameter { }
