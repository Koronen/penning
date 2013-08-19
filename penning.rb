require 'sinatra'
require 'sinatra/asset_pipeline'

require 'i18n'
I18n.load_path += Dir[File.join(File.dirname(__FILE__), 'config/locales', '*.yml').to_s]

class Penning < Sinatra::Base
  register Sinatra::AssetPipeline

  configure do
    enable :logging
  end

  helpers do
    def t(*args)
      I18n.t(*args)
    end
  end

  before do
    I18n.locale = ENV['LOCALE'].to_s.empty? ? :en : ENV['LOCALE'].to_sym
  end

  get '/' do
    haml :index
  end
end
