require ('minitest/autorun')
require_relative ('student')

class StudentSpec < MiniTest::Test

def test_class_exist
student = Student.new("Blaise",  9, "PHP")
assert_equal(Student, student.class)
end

def test_ability_to_talk
student = Student.new("Blaise", 9, "PHP")
assert_equal("I can talk!", student.talk?)
end

def test_fav_lang
  student = Student.new("Blaise", 9, "PHP")
  student.fav_lang("PHP")
  assert_equal("I love PHP", student.fav_lang("PHP"))
end

def test_set_the_name
  student = Student.new("Thomas", 8, "Ruby")
  student.set_the_name("Thomas")
  assert_equal("Thomas", student.set_the_name("Thomas"))
end

def test_set_the_cohort
  student = Student.new("Thomas", 8, "Ruby")
  student.set_the_cohort(8)
  assert_equal(8, student.set_the_cohort(8))
end
end