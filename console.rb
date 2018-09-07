require 'pry'
require './account'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db.sqlite')

binding.pry
