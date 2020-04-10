class StationFacade
  def initialize(location)
    @location = location
  end

  def get_station
    station_data = NrelService.nearest_station(@location)
    @station ||= station_data.map do |station_info|
      Station.new(station_info)
    end
  end
end
