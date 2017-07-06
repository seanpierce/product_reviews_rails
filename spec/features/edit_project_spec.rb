require 'rails_helper'

describe 'edits a product' do
  it 'navigates from root_path to edit_product_path' do
    # signin first
    visit signin_path
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => '1234567'
    click_on 'Sign in'
    # end sighin block
    visit root_path
    click_link 'Products'
    click_link Product.all.first.name
    click_link "Edit"
    fill_in 'Cost', :with => 100
    click_on 'Update Product'
    click_link Product.all.first.name
    expect(page).to have_content "Cost: $100"
  end
end
