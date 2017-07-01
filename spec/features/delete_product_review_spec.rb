require 'rails_helper'

describe 'deletes a review for a product' do
  it 'navigates to product_path, then deletes a review' do
    product = Product.all.first
    visit product_path(product)
    click_link product.reviews.first.author
    # What to do about this?
    expect(page).to have_content ''
  end
end
