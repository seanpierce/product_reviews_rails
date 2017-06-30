class Product < ApplicationRecord
  validates :name, :cost, :country, :presence => true
   has_many :reviews
end
