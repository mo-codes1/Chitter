require 'pg'
require 'active_support/all'

class Peep

	attr_reader :id, :message, :time

	def initialize(id, message, time)
		@id = id
		@message = message
		@time = time
	end

	def self.all
		if ENV['RACK_ENV'] == 'test'
			connection = PG.connect(dbname: "chitter_test")
		else
			connection = PG.connect(dbname: "chitter")
		end
		result = connection.exec("SELECT * FROM peeps;")
		result.map { |peep| Peep.new(peep['id'], peep['message'], peep['time']) }.reverse
	end

	def self.create(message)
		if ENV['RACK_ENV'] == 'test'
			connection = PG.connect(dbname: "chitter_test")
		else
			connection = PG.connect(dbname: "chitter")
		end
		time = Time.now
		query = "INSERT INTO peeps (message, time) VALUES ($1, $2);"
		connection.exec_params(query, [message, time])
	end

end