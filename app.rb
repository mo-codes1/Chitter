require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base
  configure :development do 
    register Sinatra::reloader
  end

  get '/' do
    'Hello World'
  end

  run if app_file == $0
end