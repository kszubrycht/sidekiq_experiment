require 'pry'
require './account'
require './worker'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db.sqlite')

account = Account.create(balance: 0)
10.times { Worker.perform_async(account.id) }

binding.pry
