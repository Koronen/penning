class Penning < Sinatra::Base
  get '/vouchers' do
    haml :'vouchers/index'
  end
end
