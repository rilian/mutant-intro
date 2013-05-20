require 'spec_helper'

describe Libclub::Reader, '#borrow' do
  let(:owner) { described_class.new('Hillary') }
  let(:user)  { described_class.new('Barack')  }
  let(:book)  { mock('Book', owner: owner) }

  it 'should make book unavailable for owner' do
    owner.books_owned << book
    user.borrow(book)

    expect(owner.books_lent).to include(book)
  end
end