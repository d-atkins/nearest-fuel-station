require 'rails_helper'

describe "user can visit the welcome page" do
  scenario "and see a dropdown menu" do
    visit '/'
    select "Turing", :from => :location
    click_button "Find Nearest Station"

    expect(current_path).to eq('/search')

    within('#station') do
      expect(first('.name').text).to_not be_empty
      expect(first('.address').text).to_not be_empty
      expect(first('.fuel-type').text).to_not be_empty
      expect(first('.access-times').text).to_not be_empty
    end

    within('#map-info') do
      expect(first('.distance').text).to_not be_empty
      expect(first('.travel-time').text).to_not be_empty
      expect(first('.directions').text).to_not be_empty
    end
  end
end
