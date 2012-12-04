class Showing < ActiveRecord::Base
  attr_accessible :movie_id, :number_of_available_seats, :showing_time
  #belongs_to :movie
  validate :number_of_available_seats, :showing_time
  

end
