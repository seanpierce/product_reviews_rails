require 'rails_helper'

describe 'adds a new review for a product' do
  it 'navigates to product_path, then add a review' do
    product = Product.all.first
    visit product_path(product)
    click_link "#{product.reviews.first.author} - #{product.reviews.first.rating}"
    click_link 'Edit this review'
    fill_in 'Content', :with => 'Sean is the best at integration tests, but he still needs to work on his routing!'
    click_on 'Update Review'
    expect(page).to have_content "#{product.reviews.first.author} - #{product.reviews.first.rating}"
  end
end
