  def get_person(person_name)
    puts library.list_people
    puts
    puts "Here are all the people in the library"
    print "Which person is returning the book (by name): "
    person_name = gets.chomp

    library.get(list_people, person_name)

  end

  def get_book(library, book_title)
    puts library.list_books
    puts
    print "Which book do you want to return (by name): "
    book_title = gets.chomp

    library.get(book_title)

  end


  def lend_book(library)
    puts library.list_books
    puts
    print "Which book do you want to lend (by name): "
    book_title = gets.chomp

    puts
    puts "Here are all the people in the library"
    puts library.list_people
    print "Which person is going to borrow it (by name): "
    person_name = gets.chomp


    library.lend(person_name, book_title)

  end

  def list_books(library)
    puts library.list_books

  end

  def return_book(library)
    puts library.list_people
    puts 'Choose name of person: '
    person_name = gets.chomp
    returner = library.get_person(person_name)
    puts 'Choose book: '
    puts returner.list_books
    book_title = gets.chomp

    returner.return(book_title)
    # library.return_book(book)
  end



  def list_people(library)
    puts library.list_people
  end


  def create_person(library)
    print "Name: "
    name = gets.chomp

    person = Person.new(name: name)


    library.add_person(person)
  end



  def create_book(library)
    print "Title: "
    title = gets.chomp

    print "Genre: "
    genre = gets.chomp

    book = Book.new(title: title, genre: genre)

    library.add_book(book)
  end


  def menu
    puts 'clear'
    puts "***Hard Copy Rental - CodeClan Library***"


    puts
    puts
    puts "1. Create Book"
    puts "2. Create Person"
    puts "3. List all Books"
    puts "4. List all People"
    puts "5. Lend Books"
    puts "6. Return Books"
    puts "7. List Borrowed Books"
    puts
    puts "0. Quit"
    puts
    print "--> "
    gets.to_i
  end
