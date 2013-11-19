class Property
  include ActiveModel::Serializers::JSON  
  attr_accessor :date, :address1, :address2, :address3, :price, :lat, :lon  

  def attributes=(hash)
    hash.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end

  def attributes
    instance_values
  end
  
end