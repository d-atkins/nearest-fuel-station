require 'rails_helper'

RSpec.describe Station, type: :model do
  it 'attributes' do
    station_data = JSON.parse(File.read('spec/fixtures/station_data.json'), symbolize_names: true)
    station = Station.new(station_data)
    expected_access_times = "MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified"

    expect(station.name).to eq("Seventeenth Street Plaza")
    expect(station.address).to eq("1225 17th St.")
    expect(station.fuel_type).to eq("ELEC")
    expect(station.access_times).to eq(expected_access_times)
  end
end
