class StoreController < ApplicationController

  def index
    @products = Product.all.order(:category_id)
  end

  def by_category
  end

  def by_market
  end

  def by_gender
  end

end
