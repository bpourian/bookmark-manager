ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './models/database_setup'

class BookMarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    @user = current_user
    erb :'links/index'
  end

  post '/links' do
    link = Link.first_or_create(url: params[:url],title:params[:title])
    Tag.multiple_tags(params[:tags], link)
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/add_link'
  end

  get '/tags/:name' do
    tag = Tag.first(name: params[:name])
    @links = tag ? tag.links : []
    erb :'links/index'
  end

  post '/user/new' do
    @user = User.new(email: params[:email])
    @user.password = params[:password]
    @user.save!
        p "I am still running"
    session[:user] = User.first(email: params[:email])
    redirect '/links'
  end

  get '/signup' do
    erb :'register/signup'
  end

  def current_user
    session[:user]
  end

end
