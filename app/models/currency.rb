class Currency < ActiveRecord::Base

  def description
    "#{name} (#{iso_code}) "
  end
end