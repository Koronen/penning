require_relative '../unit_helper'

require_relative '../../models/voucher'

describe Voucher do
  describe 'fields' do
    it 'includes a title' do
      Voucher.new.must_respond_to :title
    end
  end
end
