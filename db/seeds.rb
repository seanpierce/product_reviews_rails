Product.destroy_all
Review.destroy_all

20.times do |i|
  product = Product.create!(
    name: Faker::Commerce.product_name,
    cost: Faker::Commerce.price,
    country: Faker::Address.country
  )
  5.times do |i|
    review = product.reviews.create!(
      author: Faker::Book.author,
      content: Faker::Hipster.paragraph,
      rating: Faker::Number.between(1, 5)
    )
  end
end

p "Created #{Product.count} products"
