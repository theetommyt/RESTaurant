class PartiesController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper


  ## Party Routes
  get '/' do
    parties = Party.all
    content_type :json
    parties.to_json
  end

  get '/:id' do
    party = Party.find(params[:id])
    content_type :json
    party.to_json
  end

  post '/' do
    party = Party.create(party_params)
    content_type :json
    party.to_json
  end

  patch '/:id' do
    party = Party.find(params[:id])
    party.update(party_params)
    content_type :json
    party.to_json
  end

  put '/:id' do
    party = Party.find(params[:id])
    party.update(party_params)
    content_type :json
    party.to_json
  end

  delete '/:id' do
     Party.destroy(params[:id])
     content_type :json
     {success: "Party deleted"}.to_json
  end

end
