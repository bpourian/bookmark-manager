require 'sinatra/base'
require './models/link.rb'

class BookMarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello!'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/add_link'
  end

  post '/links' do
    Link.create(url:params[:url],title:params[:title])
    redirect '/links'
  end

end
