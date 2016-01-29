class Market < ActiveRecord::Base
  has_many :locations
  has_many :products, through: :locations

  validates_presence_of :name, :rank
  validates_uniqueness_of :name
  validates_numericality_of :rank, only_integer: true
end
