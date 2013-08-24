require 'dotenv'
Dotenv.load

require 'sinatra/base'
require 'sprockets'
require 'sprockets-helpers'

require 'i18n'
I18n.load_path += Dir[File.join(File.dirname(__FILE__), 'config/locales', '*.yml')]

require 'data_mapper'
DataMapper::Logger.new($stdout, :debug) if ENV['RACK_ENV'] == 'development'
DataMapper.setup(:default, ENV['DATABASE_URL'])

require_relative 'models/voucher'

DataMapper.finalize
DataMapper.auto_upgrade!

require_relative 'helpers/url_helper'

require_relative 'repositories/voucher_repository'

class Penning < Sinatra::Base
  set :sprockets, Sprockets::Environment.new.tap{|env|
    Dir["assets/*"].each{|path| env.append_path path }
  }

  configure do
    enable :logging

    Sprockets::Helpers.configure do |config|
      config.environment = sprockets
      config.debug       = true if development?
    end
  end

  configure :test, :development do
    get '/assets/*' do |key|
      key.gsub!(/(-\w+)(?!.*-\w+)/, '')
      asset = self.class.sprockets[key]
      content_type asset.content_type
      asset.to_s
    end
  end

  configure :staging, :production do
    Sprockets::Helpers.configure do |config|
      config.manifest = Sprockets::Manifest.new(sprockets.index, 'public/assets')
    end
  end

  helpers do
    include Sprockets::Helpers
    include UrlHelper

    def t(*args)
      I18n.t(*args)
    end
  end

  before do
    I18n.locale = ENV['LOCALE'].to_s.empty? ? :en : ENV['LOCALE'].to_sym
  end

  get '/' do
    recent_vouchers = VoucherRepository.fetch_recent
    render :haml, :front_page, locals: { recent_vouchers: recent_vouchers }
  end
end

require_relative 'controllers/vouchers_controller'
