class Food < ActiveRecord::Base

  belongs_to(:orders)

  def initialize
    @name = name
    @price = price
  end

  def name
    @name
  end

  def price
    @price
  end

end
