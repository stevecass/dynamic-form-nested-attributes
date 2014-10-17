class Leg < ActiveRecord::Base
  belongs_to :trip
  belongs_to :location
  has_many :line_items

  accepts_nested_attributes_for :location, :line_items
end