class Party < ActiveRecord::Base

  has_many(:foods through :orders)

  def name
    @name
  end

end
