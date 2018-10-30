import Vapor

/// Called after your application has initialized.
public func boot(_ app: Application) throws {
    // your code here
	let conn = try app.newConnection(to: .sqlite).wait()
	let restaurant1 = Restaurant(id: nil, name: "Salad Shop", address:
		Address(addressString: "808 Post Ave\nSeattle, WA 98104", latitude: 47.603342, longitude: -122.335675), imageUrl: nil)
	_ = restaurant1.save(on: conn)
	let food1 = Food(id: nil, name: "Taco Salad", restaurant: restaurant1, price: 5.50, imageUrl: nil)
	_ = food1.save(on: conn)
	let review1 = Review(id: nil, food: food1, rating: 4.2, comment: "A bit spicy")
	_ = review1.save(on: conn)
	
	let restaurant2 = Restaurant(id: nil, name: "Tasty Burger", address:
		Address(addressString: "1001 Alaskan Way\nSeattle, WA 98104", latitude: 47.603342, longitude: -122.340030), imageUrl: nil)
	_ = restaurant2.save(on: conn)
	let food2 = Food(id: nil, name: "Caesar Salad", restaurant: restaurant2, price: 8.95, imageUrl: nil)
	_ = food2.save(on: conn)
	let review2 = Review(id: nil, food: food2, rating: 5.0, comment: "Fresh and tasty. Worth every penny")
	_ = review2.save(on: conn)
	
	let restaurant3 = Restaurant(id: nil, name: "Town & Country", address:
		Address(addressString: "65 Marion Street\nSeattle, WA 98104", latitude: 47.647572, longitude: -122.354910), imageUrl: nil)
	_ = restaurant3.save(on: conn)
	let food3 = Food(id: nil, name: "Garden Salad", restaurant: restaurant3, price: 3.25, imageUrl: nil)
	_ = food3.save(on: conn)
	let review3 = Review(id: nil, food: food3, rating: 1.0, comment: "Soggy. Inedible")
	_ = review3.save(on: conn)

	defer { conn.close() }
}
