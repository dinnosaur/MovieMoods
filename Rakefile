require_relative 'config/environment'

require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end


desc 'reset user'
task :resetuser do
  ActiveRecord::Base.establish_connection.execute("TRUNCATE users")
end


