def rps

    p_score = 0
    c_score = 0

    while p_score < 2 || c_score < 2

    puts "\nPlayer Score: #{p_score}, Computer Score: #{c_score}"
    print 'Please choose rock (r), paper (p), or scissors (s):'
    player = gets.chomp.downcase
    choices_p = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors'}
    choices_c = { 0 => 'rock', 1 => 'paper', 2 => 'scissors'}
    comp = rand(3)

    if player == 'r' || player == 'p' || player == 's'
        comp = choices_c[comp]
        player = choices_p[player]
            puts "Player chose #{player}."
            puts "Computer chose #{comp}."
            player_wins = "#{player.capitalize} beats #{comp.capitalize}, Player wins the round."
            comp_wins = "#{comp.capitalize} beats #{player.capitalize}, Computer wins the round."
            tie = "Tie, choose again."

        if player == 'rock' && comp == 'scissors' || player == 'paper' && comp == 'rock' || player == 'scissors' && comp == 'paper'
            puts player_wins
            p_score += 1

        elsif comp == 'rock' && player == 'scissors' || comp == 'paper' && player == 'rock' || comp == 'scissors' && player == 'paper'
            puts comp_wins
            c_score +=1

        else
            puts tie
        end
    else
        puts "You did not enter a valid response. "
    end

    if p_score == 2
        puts "\nPlayer wins the game!"
        break
    elsif c_score == 2
        puts "\nComputer wins the game!"
    break
    end

    end
end

rps

















































<h1><%= movie_year_rating_id[0]['title'] %></h1>

	<% movie_genre_studio.each do |genre_studio| %>
	  <h2><%= genre_studio['genre_name']%></h2>
	  <h3><%= genre_studio['studio_name'] %></h3>
	<% end %>

	<button class = "btn" onclick=window.location.href="/movies">All Movies</a></button>
	<button class = "btn" onclick=window.location.href="/actors">All Actors</a></button>

<% movie_info.each do |info| %>
  <ul>
    <li>Actor: <%= info['actor']%>
    <br>Role: <%= info['role']%>
    </li>
  </ul>
<% end %>


<h1>Movies</h1>

<% movie_info.each do |movie| %>
  <li><a href="/movies/<%= movie["title"] %>"><%= movie["title"] %></a></li>
<% end %>


<% movie_names.each do |movie| %>
  <li><a href="/movies/<%= movie["title"] %>"><%= movie["title"] %></a></li>
<% end %>
