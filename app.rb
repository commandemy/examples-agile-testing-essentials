require 'sinatra'

get '/' do
  erb :index
end
    
get '/frank-says' do
  'Put this in your pipe & smoke it!'
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:name]}!"
end 
