module Libclub
  class Book
    attr_reader :title, :descr, :owner

  private

    def initialize(title, description, owner)
      @title = title.to_s
      @descr = description.to_s
      @owner = owner
    end
  end
end