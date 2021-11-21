require './lib/peep'
require 'timecop'
require 'active_support/all'

describe Peep do
	it "creates a new peep" do
		Peep.create("Hello Chitter")
		expect(Peep.all.first.message).to eq "Hello Chitter"
	end

	it "saves the time a peep was made" do
		Timecop.freeze(Time.local(2021).to_formatted_s(:db))
		Peep.create("Hello Chitter")
		expect(Peep.all.first.time).to eq Time.local(2021).to_formatted_s(:db)
	end
end