import Vapor

final class RestaurantsController {
	/// Returns a list of Restaurants
	func index(_ req: Request) throws -> Future<[Restaurant]> {
		return Restaurant.query(on: req).all()
	}
}

