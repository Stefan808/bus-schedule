class BusesJourneys < ActiveRecord::Base

  validates :number_of_seats, :departure_city, :time_of_departure, :arrival_city, :time_of_arrival, presence: true 


end