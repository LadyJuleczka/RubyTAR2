require_relative 'spec_helper'

describe ToArray do
  let(:path) { '../lib/csv/authors.csv' }
  let(:reader) { ToArray.new }
  let(:author) { Author.new :author_name, :author_surname, :yob, :yod, :id }
  let(:auth_) { [] << author }

  describe '.authors_to_a' do
    it 'raise no errors' do
      expect { reader.authors_to_a(path) }.to_not raise_error
    end
  end
end
