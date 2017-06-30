require 'rails_helper'

describe 'lists a product\'s reviews' do
  it 'navigates to product_path' do
    product = Product.all.first
    visit product_path(product)
    expect(page).to have_content product.reviews.first.author
  end
end
