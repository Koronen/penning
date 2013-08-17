require_relative 'unit_helper'

require 'rack/test'

require_relative '../penning'

class MiniTest::Spec
  include Rack::Test::Methods

  def app
    Penning.new
  end
end
