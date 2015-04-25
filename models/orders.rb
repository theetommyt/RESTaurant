class Order < ActiveRecord::Base
  has_many(:foods)
  belongs_to(:party)

  def total
  end

  def paid
    false
  end



end
