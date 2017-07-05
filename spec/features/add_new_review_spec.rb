require 'rails_helper'

describe 'sign in' do
  it 'signs in' do
    # signin first
    visit signin_path
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => '1234567'
    click_on 'Sign in'
    # end sighin block
    product = Product.all.first
    visit "/products/#{product.id}/reviews/new"
    expect(page).to have_content "Write your review below"
    page.fill_in "Write your review below", :with => 'lkadfjh kjdhf kshdfkjshdfkjsh dfkjsdhfksdjkfhkjsdhf skjdhfkjshdfkjhsdf'
    page.select 5, :from => "Rate this product"
    click_on 'Submit Review'
    expect(page).to have_content "Return to products"
  end
end
