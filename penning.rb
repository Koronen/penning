require 'sinatra'
require 'sinatra/asset_pipeline'

class Penning < Sinatra::Base
  register Sinatra::AssetPipeline

  set :assets_prefix, 'assets'

  get '/' do
    haml :index
  end
end
