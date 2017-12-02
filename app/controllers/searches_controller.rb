class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'ZRO25RJHKQNQXNWDMBHHOWY2UMC51GJOG1A4URW123R4E05R'
      req.params['client_secret'] = 'VZUOCP3B2NDSASTQEHS3FH2TQHBBMHR44KVV54I3UO4HAFIO'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
