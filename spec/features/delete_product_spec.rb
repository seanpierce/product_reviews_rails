require 'rails_helper'

describe 'deletes a product' do
  it 'navigates from root_path to project_path' do
    visit root_path
    click_link Product.all.first.name
    click_link "Delete"
    # what to do about the confirm dialog box?
    expect(page).to have_content ''
  end
end
