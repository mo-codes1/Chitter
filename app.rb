require 'sinatra/base'
require 'sinatra/reloader'
require './lib/peep'

class Chitter < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/peeps' do
    p ENV

    @peeps = Peep.all
    erb(:view_peeps)
  end

  get '/add_peeps' do
    erb(:add_peeps)
  end

  post '/peeps' do
    Peep.create(message: params[:message])
    redirect '/peeps'
  end


  run if app_file == $0
end