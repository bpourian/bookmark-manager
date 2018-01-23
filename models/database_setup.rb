require 'data_mapper'
require 'dm-postgres-adapter'

require_relative './link'
require_relative './tag'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!





#
# def database_setup
#   DataMapper::Logger.new($stdout, :debug)
#
#   if ENV['RACK_ENV'] == 'development'
#     DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_development')
#   elsif ENV['RACK_ENV'] == 'test'
#     DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_test')
#   end
#
# end
