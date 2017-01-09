require_relative 'spec_helper'

describe ToArray do
  let(:path) { 'lib/csv/authors.csv' }
  let(:path2) { 'lib/csv/books.csv' }
  let(:reader) { ToArray.new }
  let(:author) { Author.new :author_name, :author_surname, :yob, :yod, :id }
  let(:auth_) { [] << author }

  describe '.authors_to_a' do
    it ' authors raise no errors' do
      expect { reader.authors_to_a(path) }.to_not raise_error
    end
    context 'authors_to_a type is an array' do
      it { expect(reader.authors_to_a(path)).to be_a_kind_of(Array) }
    end
  end
  describe '.books_to_a' do
    it 'books
    raise no errors' do
      expect { reader.books_to_a(auth_, path2) }.to_not raise_error
    end
    context 'books_to_s type is an array' do
      it { expect(reader.books_to_a(auth_, path2)).to be_a_kind_of(Array) }
    end
  end
end
