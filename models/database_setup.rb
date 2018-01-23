require 'data_mapper'

def database_setup
  DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
end





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
