class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #This makes these variables available for dynamic navigation.
  before_action :set_markets
  before_action :set_categories



    def set_markets
      @markets = Market.all.order(:rank)
    end

    def set_categories
      @categories = Category.all.order(:rank)
    end

  protect_from_forgery with: :exception
end
