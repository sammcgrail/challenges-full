require 'sinatra'
require 'pry'

get '/' do
  redirect '/groceries'
end

get '/groceries' do
  @items = File.readlines('grocery_list.txt')
  erb :index
end

post '/groceries' do
  item = params['item']

  File.open('grocery_list.txt', 'a') do |file|
    file.puts(item)
  end

  redirect '/groceries'
end
