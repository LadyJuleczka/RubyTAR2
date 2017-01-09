require_relative 'spec_helper'

describe Author do
  let(:author) { Author.new :author_name, :author_surname, :yob, :yod, :id }

  describe 'initialize' do
    context 'initializes without errors' do
      it { expect(author).to be_an_instance_of(Author) }
    end
    context 'returns name properly' do
      it { expect(author.author_name).to eq :author_name }
    end
  end
end
