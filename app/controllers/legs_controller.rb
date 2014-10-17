class LegsController < ApplicationController

  def new
    @locations = Location.all
    @leg = Leg.new
    @leg.line_items << LineItem.new
    @leg.line_items << LineItem.new
  end
end
