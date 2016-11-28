class Team 

def initialize(name, players, coach, points, result)
  @name = name
  @players = players
  @coach = coach
  @points = points
  @result = result
end

def name?
  return @name
end

def players?
  return @players
end

def coach?
  return @coach
end

def change_coach(new_name)
  @coach = new_name
end

def add_a_player(new_player)
  @players << new_player
end

def check_name(player)
  @players.include?(player)
end

def set_points(points)
  @points = points
end

def win_score(points, result)
  if result == "win"
    @points += points
  else
    @points
  end
end

end