require 'bundler'
Bundler.require()

#establish connection
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'restaurant'
)

#require models
require './models/food'
require './models/order'
require './models/party'



get '/' do
  console.log("POS SYSTEM ONLINE")
end

get 'api/foods' do
  foods = Food.all
  content_type :json
  monkeys.to_json
end

get 'api/foods/:id'do
foods = Food.find(params[:id].to_i)
content_type :json
monkeys.to_json
end

post 'api/foods' do
  foods = Food.create(params[:food])
  content_type :json
  monkeys.to_json
end

put 'api/foods/:id' do
  foods = Food.find(params[:id].to_i)
  food.update(params[:food])
  content_type :json
  monkeys.to_json
end

patch 'api/foods/:id' do
  foods = Food.find(params[:id].to_i)
  food.update(params[:food])
  content_type :json
  monkeys.to_json
end

delete 'api/foods/:id' do
  Food.delete(params[:id].to_i)
  {message: 'Food item deleted'}.to_json
end


get 'api/parties' do
  parties = Party.all
  content_type :json
  parties.to_json
end

get 'api/parties/:id'do
parties = Party.find(params[:id].to_i)
content_type :json
parties.to_json
end

post 'api/parties' do
  parties = Party.create(params[:party])
  content_type :json
  parties.to_json
end

put 'api/parties/:id' do
  parties = Party.find(params[:id].to_i)
  party.update(params[:party])
  content_type :json
  monkeys.to_json
end

patch 'api/parties/:id' do
  foods = Party.find(params[:id].to_i)
  food.update(params[:party])
  content_type :json
  monkeys.to_json
end

delete 'api/parties/:id' do
  Party.delete(params[:id].to_i)
  {message: 'Party deleted'}.to_json
end


get 'api/orders' do
  orders = Order.all
  content_type :json
  orders.to_json
end

get 'api/orders/:id'do
orders = Order.find(params[:id].to_i)
content_type :json
orders.to_json
end

post 'api/orders' do
  orders = Order.create(params[:order])
  content_type :json
  order.to_json
end

put 'api/orders/:id' do
  orders = Order.find(params[:id].to_i)
  order.update(params[:order])
  content_type :json
  order.to_json
end

patch 'api/orders/:id' do
  orders = Order.find(params[:id].to_i)
  order.update(params[:order])
  content_type :json
  order.to_json
end

delete 'api/orders/:id' do
  Order.delete(params[:id].to_i)
  {message: 'Order deleted'}.to_json
end
