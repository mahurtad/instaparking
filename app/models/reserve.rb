class Reserve < ApplicationRecord
  belongs_to :car
  belongs_to :parking
  
  has_one :cars
  has_one :parkings
end
