class NrelService
  def self.nearest_station(location)
    response = conn.get do |req|
      req.params['location'] = location
      req.params['fuel_type'] = 'ELEC'
      req.params['limit'] = '1'
    end
    JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
  end

  def self.conn
    Faraday.new "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json" do |conn|
      conn.params['api_key'] = ENV['NREL_API_KEY']
    end
  end
end
