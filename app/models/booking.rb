class Booking < ActiveRecord::Base
  attr_accessible :customer_name, :email, :movie_id, :number_of_seats, :phone, :showing_id
  #belongs to a movie
  #belongs to a showtime
  validates :customer_name, :email, :number_of_seats, :presence => true
  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@([\w-]+\.)+(com|edu|org|gov|net|mil|biz|info|qa)$/i, :message => "not vaild email" 
  validates :number_of_seats, :numericality => {:greater_than => 0, :less_than => 61, :only_integer => true}
end
