import FluentSQLite
import Vapor

/// An Address
final class Address: SQLiteModel {
	var id: Int?
	var addressString: String
	var latitude: Double
	var longitude: Double
	
	init(id: Int? = nil, addressString: String, latitude: Double, longitude: Double) {
		self.id = id
		self.addressString = addressString
		self.latitude = latitude
		self.longitude = longitude
	}
}

/// Allows dynamic migration.
extension Address: Migration { }

/// Allows encoded to and decoded from HTTP messages.
extension Address: Content { }

/// Allows dynamic parameter in route definitions.
extension Address: Parameter { }
