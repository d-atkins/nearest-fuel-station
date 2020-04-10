class MapService
  def self.directions(origin, destination)
    response = conn.get do |req|
      req.params['origin'] = origin
      req.params['destination'] = destination
    end
    JSON.parse(response.body, symbolize_names: true)[:routes].first[:legs].first
  end

  def self.conn
    Faraday.new "https://maps.googleapis.com/maps/api/directions/json" do |conn|
      conn.params['key'] = ENV['MAPS_API_KEY']
    end
  end
end
