class Product < ApplicationRecord
  validates :name, :cost, :country, :presence => true
end
