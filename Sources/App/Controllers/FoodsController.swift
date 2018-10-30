import Vapor

final class FoodsController {
	/// Returns a list of Foods
	func index(_ req: Request) throws -> Future<[Food]> {
		return Food.query(on: req).all()
	}
}

