# Require libraries
require 'sinatra/activerecord'
require 'yaml'

# connect ActiveRecord with the current database
ActiveRecord::Base.establish_connection(
    :adapter  => 'sqlite3',
    :database => 'db/content.sqlite',
)

Dir.glob("./models/*.rb").sort.each do |file|
  require file
end
