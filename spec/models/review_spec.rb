require 'rails_helper'

describe Review do
  it { should belong_to :product }
  it { should validate_presence_of :author }
  it { should validate_length_of(:content).is_at_least(50) }
  it { should validate_length_of(:content).is_at_most(250) }
  it { should validate_numericality_of(:rating).is_less_than_or_equal_to(5) }
  it { should validate_numericality_of(:rating).is_greater_than_or_equal_to(1) }
  it { should validate_presence_of :product_id }
end
