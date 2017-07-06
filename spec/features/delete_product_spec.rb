require 'rails_helper'

describe 'deletes a product' do
  it 'navigates from root_path to project_path' do
    # signin first
    visit signin_path
    fill_in 'Email', :with => 'test@email.com'
    fill_in 'Password', :with => '1234567'
    click_on 'Sign in'
    # end sighin block
    visit products_path
    click_link Product.all.first.name
    click_link "Delete"
    # what to do about the confirm dialog box?
    expect(page).to have_content ''
  end
end
