class LineItem < ActiveRecord::Base
  belongs_to :leg

  def amount_in_home_ccy
    ccy_amount * fx
  end
  
end