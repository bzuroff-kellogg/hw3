class EntriesController < ApplicationController
    def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place= Place.find_by({"id" => @entry["place_id"]})
  end

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
    @entry = Entry.new

    # assign user-entered form data to Contact's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @contact["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]

    # save Contact row
    @entry.save

    # redirect user
    redirect_to "/travel_log/#{@entry["place_id"]}"
  end

end
