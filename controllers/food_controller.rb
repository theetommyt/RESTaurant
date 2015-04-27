class FoodsController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper


  ## Food Routes
  get '/' do
    foods = Food.all
    content_type :json
    foods.to_json
  end

  get '/:id' do
    food = Food.find(params[:id])
    content_type :json
    food.to_json
  end

  post '/' do
    food = Food.create(food_params)
    content_type :json
    food.to_json
  end

  patch '/:id' do
    food = Food.find(params[:id])
    food.update(food_params)
    content_type :json
    food.to_json
  end

  put '/:id' do
    food = Food.find(params[:id])
    food.update(food_params)
    content_type :json
    food.to_json
  end

  delete '/:id' do
     Food.destroy(params[:id])
     content_type :json
     {success: "Food item deleted"}.to_json
  end

end
