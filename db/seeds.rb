puts "merde"
Car.destroy_all
Booking.destroy_all
User.destroy_all


User.create!(first_name: "John", last_name: "Doe", email: "johndoe@gmail.com", password: "123456")
Car.create!(model: "Ferrari", brand: "Tiguan", year: 1991, km:100000, color:"violet", description: "blabla", price_per_day: 100, photo: "https://images.unsplash.com/photo-1532635246-3f1e6f8d1b3f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", user_id: User.first.id)
Car.create!(model: "Porsche", brand: "Tiguan", year: 1991, km:100000, color:"violet", description: "blabla", price_per_day: 100, photo: "https://images.unsplash.com/photo-1532635246-3f1e6f8d1b3f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", user_id: User.first.id)
Car.create!(model: "Lamborghini", brand: "Tiguan", year: 1991, km:100000, color:"violet", description: "blabla", price_per_day: 100, photo: "https://images.unsplash.com/photo-1532635246-3f1e6f8d1b3f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", user_id: User.first.id)
puts "....."
