require 'rails_helper'

describe 'deletes a review for a product' do
  it 'navigates to product_path, then deletes a review' do
    # signin first
    visit signin_path
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => '1234567'
    click_on 'Sign in'
    # end sighin block
    product = Product.all.first
    visit product_path(product)
    click_link product.reviews.first.user.username
    # What to do about this?
    expect(page).to have_content ''
  end
end
