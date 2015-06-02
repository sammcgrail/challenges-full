require 'sinatra'
require 'pry'
require 'csv'
require 'erb'

def place_data
  @places = CSV.read('places.csv', headers: true)
  return @places
end

get '/' do
  redirect '/places'
end

get '/places' do
  erb :index, locals: { places: place_data }
end

post '/places/new' do
  city = params[:city]
  country = params[:country]
  url = params[:url]

  CSV.open('places.csv', 'a') do |csv|
    csv << [city, country, url]
  end

  redirect '/'
end

get '/places/:place_name' do
  place_name = params[:place_name]
  erb :show, locals: { data: place_data, city_name: place_name }
end
