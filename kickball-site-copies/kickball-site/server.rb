require 'sinatra'
require 'json'
#
file = File.read('roster.json')
data_hash = JSON.parse(file)

team_names = data_hash.keys
team_roster = data_hash

get "/teams" do
  erb :index, locals: { teams: team_names, data: team_roster }
end

get "/teams/:team_name" do
  erb :show, locals: { names: params[:team_name], data: team_roster }
end

get "/positions/:position" do
  erb :pos, locals: { position: params[:position], data: team_roster }
end
# set :views, File.join(File.dirname(__FILE__), "views")
# set :public_folder, File.join(File.dirname(__FILE__), "public")
