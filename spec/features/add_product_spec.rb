require 'rails_helper'

describe 'creates a new product' do
  it 'navigates from root_path to products_new_path' do
    visit root_path
    click_link 'New Product'
    fill_in 'Name', :with => 'My Cool Product'
    fill_in 'Cost', :with => 33
    fill_in 'Country', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'My Cool Product'
  end
end
