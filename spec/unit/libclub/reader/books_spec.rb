require 'spec_helper'

describe Libclub::Reader, '#books' do
  let(:instance)   { described_class.new('Barack') }
  let(:subject)    { instance.books }
  let(:book_one)   { mock('Book one') }
  let(:book_two)   { mock('Book two') }
  let(:book_three) { mock('Book three') }

  it 'should calculate presented books' do
    instance.books_owned << book_one
    instance.books_owned << book_two
    instance.books_lent << book_two
    instance.books_borrowed << book_three

    expect(subject).to include(book_one)
    expect(subject).to include(book_three)
  end
end