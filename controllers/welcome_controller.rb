class WelcomeController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper


  ## Food Routes
  get '/' do
    erb :index
  end

  
