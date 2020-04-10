class SearchController < ApplicationController
  def index
    @station_facade = StationFacade.new(params[:location])
  end
end
