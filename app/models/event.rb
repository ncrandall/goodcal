class Event < ActiveRecord::Base
  attr_accessible :all_day, :date, :description, :location, :repeat, :title

  validates :date, :presence => true
  validates :title, :presence => true, :length => { :maximum => 50 }
  validates :owner_id, :presence => true
end
