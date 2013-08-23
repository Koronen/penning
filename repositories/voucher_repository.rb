require_relative '../models/voucher'

module VoucherRepository
  def self.save(voucher)
    voucher.save
  end

  def self.fetch_recent
    Voucher.all
  end
end
