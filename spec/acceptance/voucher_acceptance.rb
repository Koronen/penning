require_relative '../acceptance_helper'

describe 'Vouchers' do
  describe 'index' do
    it 'should contain list of all vouchers' do
      get '/vouchers'
      assert_includes last_response.body, 'Vouchers'
    end
  end
end
