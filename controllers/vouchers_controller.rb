class Penning < Sinatra::Base
  get '/vouchers' do
    vouchers = VoucherRepository.fetch_all
    render :haml, :'vouchers/index', locals: { vouchers: vouchers }
  end
end
