require_relative 'spec_helper'

describe Book do
  let(:author) { Author.new :author_name, :author_surname, :yob, :yod, :id }
  let(:book) { Book.new :tittle, :id, :yor, :quantity, :isbn }

  describe 'initialize' do
    it 'initializes without errors' do
      expect { Book.new('Oblicza zmyslone', '2', 1926, 5, 83-232-32) }.not_to raise_error
    end
    it 'wrong number of arguments' do
      expect { Book.new('Oblicza zmyslone', '2', 1926, 5, 83-232-32, 67) }.to raise_error
    end
    context 'create new object without errors' do
      it { expect(book).to be_an_instance_of(Book) }
    end
    context 'when returns tittle' do
      it { expect(book.tittle).to eq :tittle }
    end
    context 'when returns id' do
      it { expect(book.id).to eq :id }
    end
    context 'when returns year of realase' do
      it { expect(book.yor).to eq :yor }
    end
    context 'when returns quantity' do
      it { expect(book.quantity).to eq :quantity }
    end
    context 'when returns ISBN' do
      it { expect(book.isbn).to eq :isbn }
    end
  end
  describe '.get_author' do
    context 'return type should be an array' do
      it { expect(book.get_authors).to be_an(Array) }
    end
  end
  describe '.to2_s' do
    context 'return type should be string' do
      it { expect(book.to2_s).to be_an(String) }
    end
  end
end
