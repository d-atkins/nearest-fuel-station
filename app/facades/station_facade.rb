class StationFacade
  def initialize(location)
    @location = location
  end

  def station
    station_data = NrelService.nearest_station(@location)
    @station ||= Station.new(station_data)
  end

  def distance
    map_json[:distance][:text]
  end

  def travel_time
    map_json[:duration][:text]
  end

  def directions
    map_json[:steps].map do |direction_data|
      direction_data[:html_instructions]
    end
  end

  private

    def map_json
      @map_data ||= MapService.directions(@location, @station.address)
    end
end
