class TravelLogController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    render :template => "travel_log/new"
  end
  
  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({ "place_id" => @place["id"] })
    render :template => "travel_log/show"

  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/travel_log"
  end
end
