class Food < ActiveRecord::Base

  belongs_to(:orders)
  has_many(:parties, :through => :orders)

  

end
