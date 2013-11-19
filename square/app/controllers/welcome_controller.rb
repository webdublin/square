class WelcomeController < ApplicationController
  require "property_price"
  def index
    render json: PropertyPrice.getall()
  end
end
