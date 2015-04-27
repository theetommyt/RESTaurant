class Order < ActiveRecord::Base
  belongs_to(:foods)
  belongs_to(:parties)

  def total
  end

  def paid
    false
  end



end
