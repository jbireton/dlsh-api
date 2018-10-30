import Vapor

final class ReviewsController {
	/// Returns a list of Reviews
	func index(_ req: Request) throws -> Future<[Review]> {
		return Review.query(on: req).all()
	}
}

