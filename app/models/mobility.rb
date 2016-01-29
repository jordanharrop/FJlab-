class Mobility < ActiveRecord::Base
  has_many :products

  validates_presence_of :name, :rank
  validates_uniqueness_of :name
  validates_numericality_of :rank, only_integer: true
end
