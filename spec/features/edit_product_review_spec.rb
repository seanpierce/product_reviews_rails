require 'rails_helper'

describe 'edits a review for a product' do
  it 'navigates to product_path, then add a review' do
    # signin first
    visit signin_path
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => '1234567'
    click_on 'Sign in'
    # end sighin block
    product = Product.all.first
    visit product_review_path(product, product.reviews.first)
    click_link 'Edit your review'
    page.fill_in "Write your review below", :with => 'Sean is the best at integration tests, but he still needs to work on his routing!'
    click_on 'Submit Review'
    expect(page).to have_content "Review successfully updated!"
  end
end
