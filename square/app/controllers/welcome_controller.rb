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

  def prepare_access_token(oauth_token, oauth_token_secret)
    consumer = OAuth::Consumer.new("CONSUMER TOKEN", "SECRET",
    { :site => "https://api.twitter.com",
      :scheme => :header
    })
  # now create the access token object from passed values
    token_hash = { :oauth_token => oauth_token,
                 :oauth_token_secret => oauth_token_secret
               }
    access_token = OAuth::AccessToken.from_hash(consumer, token_hash )
    return access_token
  end

def tweets
    access_token = prepare_access_token("ACCESS TOKEN", "SECRET")
    # use the access token as an agent to get the home timeline
    response = access_token.request(:get, "https://api.twitter.com/1.1/search/tweets.json?q=cats&count=100&geocode=53.353634,-6.269548,100mi")
    x = JSON.parse(response.body)
    render json: x
end
  
end
