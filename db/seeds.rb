Product.destroy_all
Review.destroy_all
User.destroy_all

user = User.create!(username: "User1", email: "test@email.com", password: "1234567", password_confirmation: "1234567", admin: false)
user2 = User.create!(username: "User2", email: "test2@email.com", password: "1234567", password_confirmation: "1234567", admin: false)
user3 = User.create!(username: "User3", email: "test3@email.com", password: "1234567", password_confirmation: "1234567", admin: false)


20.times do |i|
  product = Product.create!(
    name: Faker::Commerce.product_name,
    cost: Faker::Commerce.price,
    country: Faker::Address.country
  )
  rand(1..10).times do |i|
    review = product.reviews.create!(
      user_id: User.order("RANDOM()").first.id,
      content: Faker::Hipster.sentence(10),
      rating: Faker::Number.between(1, 5)
    )
  end
end

p "Created #{Product.count} products"
