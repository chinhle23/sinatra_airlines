require 'sinatra'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/spreedly' do
  erb :spreedly
end
