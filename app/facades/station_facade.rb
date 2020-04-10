class StationFacade
  def initialize(location)
    @location = location
  end

  def name
    station.name
  end

  def address
    station.address
  end

  def fuel_type
    station.fuel_type
  end

  def access_times
    station.access_times
  end

  def distance
    map.distance
  end

  def travel_time
    map.travel_time
  end

  def directions
    map.directions
  end

  private

    def station
      @station ||= Station.new(NrelService.nearest_station(@location))
    end

    def map
      @map ||= Map.new(MapService.directions(@location, @station.address))
    end
end
