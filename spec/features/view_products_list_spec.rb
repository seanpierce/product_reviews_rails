require 'rails_helper'

describe 'visit root_path' do
  it 'navigates to root_path' do
    visit root_path
    expect(page).to have_content 'My Cool Product'
  end
end
