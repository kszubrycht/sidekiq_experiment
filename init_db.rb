require 'sqlite3'
require 'active_record'

system('rm db.sqlite')
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db.sqlite')

ActiveRecord::Schema.define do
  create_table 'accounts' do |t|
    t.integer  'balance'
  end
end
