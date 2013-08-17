require 'sinatra'

class Penning < Sinatra::Base
  get '/' do
    'Hello World!'
  end
end
