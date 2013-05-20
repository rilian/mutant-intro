require 'spec_helper'

describe Libclub::Reader, '#borrow' do
  let(:owner) { described_class.new('Hillary') }
  let(:user)  { described_class.new('Barack')  }
  let(:book)  { mock('Book', owner: owner) }

  let(:owner2) { described_class.new('Dima') }
  let(:book2)  { mock('Book', owner: owner2) }

  it 'should make book unavailable for owner' do
    owner.books_owned << book
    user.borrow(book)

    expect(owner.books_lent).to eql [book]
    expect(user.books_borrowed).to eql [book]
  end

  it 'should not make book unavailable for not owner' do
    user.borrow(book2)

    expect(user.books_lent).to eql []
  end
end
