require 'sinatra'

# set: session_secret, "the secret"

#get '/' do
#  "hello!"
#end

#get '/random-cat' do
#  @catname = ["Amigo", "Oscar", "Viking"].sample
#  erb(:index)
#end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
#    p params
    @name = params[:name]
    erb(:dog)
end

post '/named-cat' do
#  p params
  @name = params[:name]
  erb(:index)
end
