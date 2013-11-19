class PropertyPrice
  include HTTParty
  
  def self.getall()
    url = "https://free-ec2.scraperwiki.com/dar3zry/d6fe1a84b5f4474/sql/?q=select%20%0A%09date%2C%0A%20%20%20%20lat%2C%0A%20%20%20%20lon%2C%0A%09address1%2C%0A%20%20%20%20address2%2C%0A%20%20%20%20address3%2C%0A%09price%0Afrom%20swdata%0A--where%20address1%20like%20'%25lucan%25'%20or%20address2%20like%20'%25lucan%25'%0A--%20where%20price%20%3E%20%0Awhere%20(lat%20%3C%3E%200%20AND%20lon%20%3C%3E%200)%0Aorder%20by%20id%20asc%0A--limit%2014000"
    response = HTTParty.get(url)
    body = JSON.parse(response.body)
    return body
  end
  
  def self.getonly(addr1)
    url = "https://free-ec2.scraperwiki.com/dar3zry/d6fe1a84b5f4474/sql/?q=select%20%0A%09date%2C%0A%20%20%20%20lat%2C%0A%20%20%20%20lon%2C%0A%09address1%2C%0A%20%20%20%20address2%2C%0A%20%20%20%20address3%2C%0A%09price%0Afrom%20swdata%0Awhere%20(lat%20%3C%3E%200%20AND%20lon%20%3C%3E%200)%0AAND%20address1%20like%20'%25#{addr1}%25'%0Aorder%20by%20id%20asc%0A"
    response = HTTParty.get(url)
    body = JSON.parse(response.body)
    return body
  end
end
