class OrdersController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper


  ## Order Routes
  get '/' do
    orders = Order.all
    content_type :json
    orders.to_json
  end

  get '/:id' do
    order = Order.find(params[:id])
    content_type :json
    order.to_json
  end

  post '/' do
    food = Food.create(order_params)
    content_type :json
    order.to_json
  end

  patch '/:id' do
    order = Order.find(params[:id])
    order.update(order_params)
    content_type :json
    order.to_json
  end

  put '/:id' do
    order = Orders.find(params[:id])
    order.update(order_params)
    content_type :json
    order.to_json
  end

  delete '/:id' do
     Order.destroy(params[:id])
     content_type :json
     {success: "Order deleted"}.to_json
  end

end
