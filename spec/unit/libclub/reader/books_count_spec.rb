require 'spec_helper'

describe Libclub::Reader, '#books_count' do
  let(:instance) { described_class.new('Barack') }
  let(:subject) { instance.books }
  let(:book_one) { mock('Book one') }
  let(:book_two) { mock('Book two') }
  let(:book_three) { mock('Book three') }

  it 'should calculate books when empty' do
    expect(instance.books_count).to eql 0
  end

  it 'should calculate books' do
    instance.books_owned << book_one
    instance.books_owned << book_two
    instance.books_lent << book_two
    instance.books_borrowed << book_three

    expect(instance.books_count).to eql 2
  end
end
