require 'dm-core'

class Voucher
  include DataMapper::Resource

  property :title, String, key: true
end
