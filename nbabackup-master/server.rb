require "csv"
require "pg"
require "pry"
require "sinatra"

def db_connection
  begin
    connection = PG.connect(dbname: "nba")
    yield(connection)
  ensure
    connection.close
  end
end

# system('psql < schema.sql')

nba = CSV.readlines("nba.csv", headers: true)

def nba_list
inserter =
        "INSERT INTO nba (
          team,
          player,
          num
        ) VALUES ($1, $2, $3)"
        nba = CSV.readlines("nba.csv", headers: true)
  nba.each do |nba|
    team = nba["team"]
    player = nba ["player"]
    num = nba["num"]
    elements = [team,player,num]

    nba_list = db_connection do |conn|
      conn.exec_params(inserter, elements)
    end
  end
end

get '/' do
  redirect '/nba'
end

get '/nba' do
  nba_list
  erb :index, locals: { nba_list: nba_list }
end
