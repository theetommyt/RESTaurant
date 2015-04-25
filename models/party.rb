class Party < ActiveRecord::Base

  has_many(:orders)

  def name
    @name
  end

end
