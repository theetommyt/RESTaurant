class Food < ActiveRecord::Base

  belongs_to(:orders)
  has_many(:parties, :through => :orders)

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price
  end

end
