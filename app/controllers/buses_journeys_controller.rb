class BusesJourneysController < ApplicationController

	get "/buses_journeys/new" do
		erb :'buses_journeys/new'
	end

	post "/buses_journeys/new" do
		bus = BusesJourneys.new params[:bus]
    if bus.save
      redirect to('/success')
    else
      @error = bus.errors.full_messages.to_sentence
      halt erb(:'buses_journeys/new')
    end
	end

  get "/buses_journeys/:id" do
    @bus = BusesJourneys.find_by(id: params[:id])
    erb :'buses_journeys/view'
  end

end