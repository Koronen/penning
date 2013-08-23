require_relative '../acceptance_helper'

describe 'Vouchers' do
  after do
    VoucherRepository.purge!
  end

  describe 'index' do
    it 'should contain list of all vouchers' do
      voucher_titles = %w(Alfa Beta Gamma)
      voucher_titles.each do |voucher_title|
        VoucherRepository.save(Voucher.new(title: voucher_title))
      end

      get '/vouchers'

      voucher_titles.each do |voucher_title|
        assert_includes last_response.body, voucher_title
      end
    end
  end
end
