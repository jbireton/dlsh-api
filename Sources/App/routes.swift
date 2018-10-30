import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.get { req in
        return "DLSH api"
    }

	let restaurantsController = RestaurantsController()
    router.get("restaurants", use: restaurantsController.index)
	
	let foodsController = FoodsController()
	router.get("foods", use: foodsController.index)
	
	let reviewsController = ReviewsController()
	router.get("reviews", use: reviewsController.index)
}
