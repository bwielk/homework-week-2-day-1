require ('minitest/autorun')
require_relative('team')

class TeamSpec < Minitest::Test

def test_team_exist
team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 1, "win")
assert_equal(Team, team.class)
end

def test_get_name
  team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 3, "win")
  assert_equal("Bastards", team.name?)
end

def test_get_players 
  team = Team.new("Bastards", ["A", "B", "C"],"Donald Duck", 1, "win")
  assert_equal(["A", "B", "C"], team.players?)
end

def test_get_coach
  team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 1, "win")
  assert_equal("Donald Duck", team.coach?)
end

def test_update_coach
  team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 1 ,"win")
  team.change_coach("Goofy")
  assert_equal("Goofy", team.change_coach("Goofy"))
end

def test_add_a_player
 team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 1, "win")
 assert_equal(["A","B","C","D"], team.add_a_player("D"))
end

def test_check_names 
  team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 1, "win")
  assert_equal(true, team.check_name("A"))
end

def test_set_points
  team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 0, "win")
  assert_equal(0, team.set_points(0))
end 

def test_win_score__win
  team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 0, "win")
  assert_equal(5, team.win_score(5,"win"))
end

def test_win_score__loose
  team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 0, "loose")
  assert_equal(0, team.win_score(0, "loose"))
end

end