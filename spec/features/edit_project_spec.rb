require 'rails_helper'

describe 'visit products/:product_id path then edit that product' do
  it 'navigates from root_path to edit_product_path' do
    visit root_path
    click_link Product.all.first.name
    click_link "Edit"
    fill_in 'Cost', :with => 100
    click_on 'Update Product'
    click_link Product.all.first.name
    expect(page).to have_content "Cost: $100"
  end
end