class Location < ActiveRecord::Base
  belongs_to :market
  belongs_to :product
end
