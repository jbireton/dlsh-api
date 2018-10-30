import FluentSQLite
import Vapor

/// Review of a Food
final class Review: SQLiteModel {
	var id: Int?
	var food: Food
	var rating: Double
	var comment: String?
	
	init(id: Int? = nil, food: Food, rating: Double, comment: String? = nil) {
		self.id = id
		self.food = food
		self.rating = rating
		self.comment = comment
	}
}

/// Allows dynamic migration.
extension Review: Migration { }

/// Allows encode to and decode from HTTP messages.
extension Review: Content { }

/// Allows dynamic parameter in route definitions.
extension Review: Parameter { }
