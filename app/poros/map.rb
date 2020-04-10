class Map
  attr_reader :distance, :travel_time, :directions

  def initialize(map_data)
    @distance = map_data[:distance][:text]
    @travel_time = map_data[:duration][:text]
    @directions = map_data[:steps].map { |data| data[:html_instructions] }
  end
end
