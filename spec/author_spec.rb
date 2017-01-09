require_relative 'spec_helper'

describe Author do
  let(:author) { Author.new :author_name, :author_surname, :yob, :yod, :id }

  describe 'initialize' do
    context 'create new object without errors' do
      it { expect(author).to be_an_instance_of(Author) }
    end
    it 'initializes without errors' do
      expect { Author.new('Jan', 'Brzechwa', 1898, 1966, 2) }.not_to raise_error
    end
    it 'wrong number of arguments' do
      expect { Author.new(1898, 1966, 2) }.to raise_error
    end
    context 'returns name properly' do
      it { expect(author.author_name).to eq :author_name }
    end
    context 'returns surname properly' do
      it { expect(author.author_surname).to eq :author_surname }
    end
    context 'returns year of birth properly' do
      it { expect(author.yob).to eq :yob }
    end
    context 'returns year of death properly' do
      it { expect(author.yod).to eq :yod }
    end
    context 'returns id properly' do
      it { expect(author.id).to eq :id }
    end
  end

  describe '.to_s' do
    context 'return type should be string' do
      it { expect(author.to_s).to be_a(String) }
    end
  end
end
