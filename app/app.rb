require 'sinatra/base'
require './app/data_mapper_setup.rb'
require 'data_mapper'

class TechmarkManager < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    'Hello TechmarkManager!'
  end

  get '/links' do

    erb :links
  end

  get  '/user/new' do
    erb :'user/new'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
