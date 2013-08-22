require 'sinatra'
require 'sinatra/asset_pipeline'

require 'i18n'
I18n.load_path += Dir[File.join(File.dirname(__FILE__), 'config/locales', '*.yml').to_s]

require_relative 'helpers/url_helper'

class Penning < Sinatra::Base
  register Sinatra::AssetPipeline

  set :assets_precompile, %w(application.js application.css *.png *.jpg *.svg *.eot *.ttf *.woff)

  configure do
    enable :logging
  end

  helpers do
    include UrlHelper

    def t(*args)
      I18n.t(*args)
    end
  end

  before do
    I18n.locale = ENV['LOCALE'].to_s.empty? ? :en : ENV['LOCALE'].to_sym
  end

  get '/' do
    haml :front_page
  end
end

require_relative 'controllers/vouchers_controller'
