require_relative '../models/voucher'

module VoucherRepository
  def self.fetch_recent
    Voucher.all
  end

  def self.save(voucher)
    voucher.save
  end
end
