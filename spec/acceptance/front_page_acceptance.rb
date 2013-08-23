require_relative '../acceptance_helper'

require_relative '../../repositories/voucher_repository'

describe 'Front Page' do
  it 'should contain a welcome phrase' do
    get '/'

    assert_includes last_response.body, 'Welcome'
  end

  it 'should contain the tagline' do
    get '/'

    assert_includes last_response.body, 'work-in-progress self-hosted bookkeeping system'
  end

  it 'should contain a short list of recent vouchers' do
    voucher_titles = %w(Alfa Beta Gamma)
    voucher_titles.each do |voucher_title|
      VoucherRepository.save(Voucher.new(title: voucher_title))
    end

    get '/'

    voucher_titles.each do |voucher_title|
      assert_includes last_response.body, voucher_title
    end
  end
end
