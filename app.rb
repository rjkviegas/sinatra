require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  "CodeWars is Awesome!"
end

get '/hello' do
  "hi again"
end

get '/goodbye' do
  "bye"
end