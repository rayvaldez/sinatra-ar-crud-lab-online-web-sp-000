
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles/new' do
    raise params.inspect
  end

  get '/articles' do
    @articles = Article.all

    erb :index
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])

    erb :show
  end

end
