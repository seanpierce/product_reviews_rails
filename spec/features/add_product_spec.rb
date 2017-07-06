require 'rails_helper'

describe 'creates a new product' do
  it 'navigates from root_path to products_new_path' do
    # signin first
    visit signin_path
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => '1234567'
    click_on 'Sign in'
    # end signin block
    visit root_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'My Cool Product'
    fill_in 'Cost', :with => 33
    fill_in 'Country', :with => 'United States'
    click_on 'Create Product'
    expect(page).to have_content 'My Cool Product'
  end
end
