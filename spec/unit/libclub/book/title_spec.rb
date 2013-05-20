require 'spec_helper'

describe Libclub::Book, '#title' do
  let(:instance) { described_class.new('Pickaxe', 'The ruby book', stub('Reader')) }
  let(:subject)  { instance.title }

  it 'should set title' do
    expect(subject).to eql('Pickaxe')
  end
end