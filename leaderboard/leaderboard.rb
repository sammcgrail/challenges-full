require "pry"
def game_info
   [
    {
      home_team: "Patriots",
      away_team: "Broncos",
      home_score: 7,
      away_score: 3
    },
    {
      home_team: "Broncos",
      away_team: "Colts",
      home_score: 3,
      away_score: 0
    },
    {
      home_team: "Patriots",
      away_team: "Colts",
      home_score: 11,
      away_score: 7
    },
    {
      home_team: "Steelers",
      away_team: "Patriots",
      home_score: 7,
      away_score: 21
    }
  ]
end

leaderboard = {
  "Patriots" => {:wins => 0, :losses => 0},
  "Broncos" => {:wins => 0, :losses => 0},
  "Colts" => {:wins => 0, :losses => 0},
  "Steelers" => {:wins => 0, :losses => 0}
}

 game_info.each do |match|

   if match[:home_score] > match[:away_score]
     hometeam = match[:home_team]
     leaderboard[hometeam][:wins] += 1
     awayteam = match[:away_team]
     leaderboard[awayteam][:losses] += 1
   else
     hometeam = match[:home_team]
     leaderboard[hometeam][:losses] += 1
     awayteam = match[:away_team]
     leaderboard[awayteam][:wins] += 1
   end
end
binding.pry
rank = leaderboard.sort_by {|key,value| value[:wins]}.reverse


puts leaderboard
leaderboard.each do |teamname, record|
  puts "#{teamname} wins: #{record[:wins]} losses: #{record[:losses]}"
end
