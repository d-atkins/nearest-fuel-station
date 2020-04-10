class StationFacade
  def initialize(location)
    @location = location
  end

  def station
    station_data = NrelService.nearest_station(@location)
    @station ||= Station.new(station_data)
  end
end
