require_relative './app'
require_relative './models/database_setup'


run BookMarkManager

ENV['RACK_ENV'] ||= 'development'
# database_setup
