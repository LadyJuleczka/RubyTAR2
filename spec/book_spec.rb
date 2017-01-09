require_relative 'spec_helper'

describe Book do
  let(:author) { Author.new :author_name, :author_surname, :yob, :yod, :id }
  let(:book) { Book.new :tittle, :id, :yor, :quantity, :isbn }

  describe 'initialize' do
    context 'initializes without errors' do
      it { expect(book).to be_an_instance_of(Book) }
    end
    context 'when returns id' do
      it { expect(book.id).to eq :id }
    end
  end
end
