require 'active_record'

ActiveRecord::Base.establish_connection adapter: 'postgresql', database: 'test_database'
ActiveRecord::Base.connection.execute('CREATE TABLE IF NOT EXISTS movies (c1 integer, c2 text, c3 text) ')

class Movie < ActiveRecord::Base
  attr_accessor :title, :director

end

movie = Movie.create
movie.title = "Doctor Strangelove"
movie.director = "Stanley Kubrick"
