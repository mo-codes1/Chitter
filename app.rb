require 'sinatra/base'
require 'sinatra/reloader'
require './lib/peep'
require './lib/user'


class Chitter < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @peeps = Peep.all
    erb :view_peep
  end

  post '/' do
    Peep.create(params[:peep_message])
    redirect '/'
  end

  get '/new_user' do
    erb :signup
  end

  post '/new_user' do
    User.create(params[:username], params[:email])
    redirect('/')
  end

  get '/user' do
    @peeps = Peep.all
    erb :existing_user
  end

  get '/login' do
    erb :login
  end

  post '/login' do
    redirect '/user'
  end 

  run! if app_file == $0
end