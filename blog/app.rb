require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Article < ActiveRecord::Base
end

get '/' do
  erb :home
end

get '/api/health' do
  'Ok'
end

post '/api/articles' do
  article = Article.new(params)
  article.title

  if article.save
    article.to_json
  else
    status 500
  end
end

get '/api/articles' do
  content_type :json

  articles = Article.order('created_at DESC')
  articles.to_json
end

get '/api/articles/:id' do
  content_type :json

  article = Article.find(params[:id])
  article.to_json
end

put '/api/articles/:id' do
  content_type :json

  article = Article.find(params[:id])
  article.update(title: params[:new_title])
  article.to_json
end

delete '/api/articles/:id' do
  Article.delete(params[:id])
  status 200
end
