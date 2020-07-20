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

get '/cat' do
  @catname = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
