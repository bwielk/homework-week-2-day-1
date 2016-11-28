class Library

def initialize(hash, book, new_book)
  @book = book
  @hash = hash
  @new_book = new_book
end 

def get_details(hash)
  puts hash
end

# def name_and_date(hash, book)
#   name = hash[book][:student_name]
#   date = hash[book][:date]
#   puts "NAME:#{name} DATE:##{date}"
# end

def add_book(hash, new_book)
  hash[new_book] = [student_name: "", date: ""]
end



end
