require './lib/peep'

describe Peep do
  describe '#all' do
    it 'returns a list of peeps' do
      connection = PG.connect(dbname: 'chitter_test')

      connection.exec("INSERT INTO peeps (message) VALUES ('Hello Chitter');")
      peeps = Peep.all

      expect(peeps).to include("Hello Chitter")
    end
  end

  describe '#create' do
    it 'adds a peep to table' do
      Peep.create(message: 'I am happy to use you')

      expect(Peep.all).to include 'I am happy to use you'
    end
  end


end