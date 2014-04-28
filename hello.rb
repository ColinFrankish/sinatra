require 'sinatra'
 
get '/secret' do
  erb :secret
end

get '/' do
  @name = %w(Amigo Oscar Viking).sample
  erb :index
end
get '/hello' do
    @visitor = params[:name]
    erb :index
end

get '/berry' do
  if params[:berry] == "yes" then erb :berry
  else
    erb :index
  end
end