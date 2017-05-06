require 'bundler/setup'
Bundler.require(:default)

configure :development do
	db = URI.parse('postgresql://yurii:5101443ura@localhost/bus_schedule_dev')

	ActiveRecord::Base.establish_connection(
		:adapter  => db.scheme,
		:username => db.user,
		:password => db.password,
		:host 	  => db.host,
		:database => db.path[1..-1]
	)
end

configure :production do
	
	db = URI.parse('postgresql://yurii:5101443ura@localhost/bus_schedule_pcod')

	ActiveRecord::Base.establish_connection(
		:adapter  => db.scheme,
		:username => db.user,
		:password => db.password,
		:host 	  => db.host,
		:database => db.path[1..-1]
	)
end

Dir["./app/**/*.rb"].sort.each { |file| require file }