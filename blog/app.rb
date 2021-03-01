require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Blog < Sinatra::Application
end

class Article < ActiveRecord::Base
end

get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/api/health' do
  status 200
  'Ok'
end

post '/api/articles' do
  article = Article.new(params)

  if article.save
    article.title
  else
    status 500
  end
end

get '/api/articles' do
  content_type :json

  articles = Article.order('created_at DESC')
  articles.to_json
end
