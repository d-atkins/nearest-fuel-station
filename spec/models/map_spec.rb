require 'rails_helper'

RSpec.describe Map, type: :model do
  it 'attributes' do
    map_data = JSON.parse(File.read('spec/fixtures/map_data.json'), symbolize_names: true)
    map = Map.new(map_data)
    expected_directions = ["Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>",
 "Turn <b>left</b> onto <b>Lawrence St</b><div style=\"font-size:0.9em\">Destination will be on the left</div>"]

    expect(map.distance).to eq("0.1 mi")
    expect(map.travel_time).to eq("1 min")
    expect(map.directions).to eq(expected_directions)
  end
end
