require ('minitest/autorun')
require_relative('library')

class LibrarySpec < MiniTest::Test

@system = {"Crime and Punishment" => {
            :student_name => "Jeff", 
            :date => "01/12/16"}}


def test_library_exist
  library = Library.new(@system, "Crime and Punishment")
  assert_equal(Library, library.class)
end

def test_get_details
  library = Library.new(@system, "Crime and Punishment", "Winnie the Pooh")
  assert_equal(@system, library.get_details(@system))
end

# def test_get_name_and_date
#   library = Library.new(@system, "Crime and Punishment")
#   assert_equal("NAME:Jeff DATE:01/12/16", library.name_and_date(@system,"Crime and Punishment"))
# end

def test_add_book
  library = Library.new(@system, "Crime and Punishment", 
    "Winnie the Pooh")
  assert_equal(@system = {"Crime and Punishment" => {:student_name => "Jeff", :date => "01/12/16"},
            "Winnie the Pooh" => {student_name: "", date: ""} }, library.add_book(@system, "Winnie the Pooh"))
end










end
