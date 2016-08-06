require 'json'
require 'net/http'

def googlemap(zipcode)

        #zipcode = "1000001"
        uri = URI.parse('http://maps.googleapis.com/maps/api/geocode/json?address=' + zipcode + '&language=ja&sensor=false')
        i#puts uri
        json = Net::HTTP.get(uri)
        
        result = JSON.parse(json)
        #puts result
        lat = result["results"][0]["geometry"]["location"]["lat"]
        lng = result["results"][0]["geometry"]["location"]["lng"]

        return lat, lng
end
