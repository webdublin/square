class WelcomeController < ApplicationController
  require "property_price"
  def index
  
  if params[:q].to_s == ''
	val = "Raheny"
  else
	val = params[:q]
  end
    result = PropertyPrice.getonly(val)
    @properties = Array.new 
    result.each do |prop|
      @newprop = Property.new
      @newprop.from_json(prop.to_json)     
      @properties << @newprop       
    end
  end
  
  def search
  if params[:q].to_s == ''
	val = "Raheny"
  else
	val = params[:q]
  end
  
	result = PropertyPrice.getonly(val)
    @properties = Array.new 
    result.each do |prop|
      @newprop = Property.new
      @newprop.from_json(prop.to_json)     
      @properties << @newprop       
    end
	render :index
  end
end
