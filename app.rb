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

get '/random-cat' do
  @catname = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/named-dog' do
    p params
    @name = params[:name]
    erb(:dog)
end

post '/named-dog' do
  p params
  @name = params[:name]
  erb(:dog)
end
