class WelcomeController < ApplicationController
  require "property_price"
  def index
    #result = PropertyPrice.getall()
    result = PropertyPrice.getonly("Saggart")
    @properties = Array.new 
    result.each do |prop|
      @newprop = Property.new
      @newprop.from_json(prop.to_json)     
      @properties << @newprop       
    end
  end
end
