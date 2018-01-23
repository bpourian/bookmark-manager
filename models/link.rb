require 'data_mapper'
require_relative './database_setup'

class Link
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :url, String
end

database_setup
DataMapper.finalize
DataMapper.auto_upgrade!
