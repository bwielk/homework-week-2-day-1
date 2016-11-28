class Student
  def initialize(name, cohort, lang)
    @name = name
    @cohort = cohort
    @lang = lang
  end
  def talk?
    return "I can talk!"
  end

  def fav_lang(lang)
    return "I love #{lang}"
  end

  def set_the_name(name)
    @name = name
  end

  def set_the_cohort(cohort)
    @cohort = cohort
  end
enddef test_win_score__win
#   team = Team.new("Bastards", ["A", "B", "C"], "Donald Duck", 5, "win")
#   assert_equal(5, team.set_points(5))
#   assert_equal("win", team.win_score("win"))
# end