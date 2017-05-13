class CreatateBusJourney < ActiveRecord::Migration[5.1]
  def self.up
  	create_table :buses_journeys do |t|
  	  t.integer :number_of_seats, null: false
  	  t.string :departure_city, null: false
  	  t.datetime :time_of_departure, null: false
  	  t.string :arrival_city, null: false
  	  t.datetime :time_of_arrival, null: false

  	  t.timestamps
  	end
  end

  def self.down
  	drop_table :buses_journeys
  end
end
