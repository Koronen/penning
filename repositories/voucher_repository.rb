require_relative '../models/voucher'

module VoucherRepository
  @@vouchers = []

  def self.save(voucher)
    @@vouchers << voucher
  end

  def self.fetch_recent
    @@vouchers
  end
end
