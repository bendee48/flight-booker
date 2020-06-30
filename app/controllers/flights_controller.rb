class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates = Flight.format_dates_for_selection
    @search_results = Flight.search(params[:search]) if params[:search]
  end
end
