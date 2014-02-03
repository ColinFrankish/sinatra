require 'sinatra'

# get '/' do 
#   'hello!!!'
  
# end
 
get '/secret' do
  'This is a secretpage'
  # <div>
  #   <img src='http://www.google.co.uk/imgres?hl=en&biw=1440&bih=723&tbm=isch&tbnid=_dQ-qRoPxV0dLM%3A&imgrefurl=http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FDonkey&docid=853kdcju-YInhM&imgurl=http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F7%2F7b%2FDonkey_1_arp_750px.jpg&w=750&h=536&ei=FqzvUq-6CqHA7Aa25IDICg&zoom=1&ved=0CGwQhBwwAA&iact=rc&dur=1&page=1&start=0&ndsp=20'>
  # </div>
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
  erb :berry

end