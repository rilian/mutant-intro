module Libclub
  class Reader
    attr_accessor :books_owned, :books_borrowed, :books_lent
    attr_reader :name

    def books
      books_owned - books_lent + books_borrowed
    end

    def books_count
      books.length
    end

    def borrow(book)
      unless book.owner.books_lent.include?(book)
        book.owner.books_lent << book
        books_borrowed << book
      end
    end

    private

    def initialize(name)
      @name = name.to_s
      @books_owned = []
      @books_borrowed = []
      @books_lent = []
    end
  end
end
