class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :mobility

  has_many :locations
  has_many :markets, through: :locations

  validates_presence_of :style_number, :category_id, :mobility_id, :gender, :image_url
  validates_uniqueness_of :style_number, :confirmation_number
  validates_numericality_of :mobility_rank, only_integer: true
end
