require 'spec_helper'

describe Libclub::Reader, '#name' do
  context 'when string' do
    let(:instance) { described_class.new('Barack') }

    it 'should return name' do
      expect(instance.name).to eql 'Barack'
    end
  end

  context 'when other' do
    let(:instance) { described_class.new(2) }

    it 'should return name' do
      expect(instance.name).to eql '2'
    end
  end
end
