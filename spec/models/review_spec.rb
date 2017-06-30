require 'rails_helper'

describe Review do
  it { should belong_to :product }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :product_id }
end
