require 'sinatra/base'
require './models/link.rb'

class BookMarkManager < Sinatra::Base
  get '/' do
    'Hello!'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

end
