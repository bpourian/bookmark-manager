require 'data_mapper'
require './app.rb'

namespace :db do

  desc "harmless upgrade"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts 'Auto-upgrade complete - data was not lost'
  end

  desc "harmful upgrade"
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts 'Auto-migrate complete - data was erased'
  end
end
