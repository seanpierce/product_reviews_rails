require 'rails_helper'

describe 'adds a new review for a product' do
  it 'navigates to product_path, then add a review' do
    product = Product.all.first
    visit product_path(product)
    click_link 'Add a review'
    fill_in 'Author', :with => 'Franz'
    fill_in 'Content', :with => 'Sean is the best at integration tests!'
    page.select 5, :from => 'Rating'
    click_on 'Create Review'
    expect(page).to have_content product.reviews.last.author
  end
end
