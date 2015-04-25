class Food < ActiveRecord::Base

  has_many(:orders)
  has_many(:parties through :orders)

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
