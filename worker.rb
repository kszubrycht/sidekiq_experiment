require 'sidekiq'
require './account'

class Worker
  include Sidekiq::Worker

  def perform(id)
    ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db.sqlite')
    account = Account.find(id)
    account.balance += 1
    account.save
  end
end
