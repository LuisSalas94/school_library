require_relative './rental'

class Book
  attr_accessor :title, :author, :rentals, :id

  def initialize(title, author, id = Random.new.rand(1..1000))
    @id = id
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person, index_book, index_person)
    Rental.new(date, person, self, index_book, index_person)
  end
end
