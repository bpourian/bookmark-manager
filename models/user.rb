require 'bcrypt'

class User
  include DataMapper::Resource
  include BCrypt

  property :id, Serial
  property :email, String, :length => 100
  property :password_hash, Text

  def password=(password)
    self.password_hash = BCrypt::Password.create(password)
  end
end


# # bcrypt will generate the password hash
# require 'bcrypt' # make sure 'bcrypt' is in your Gemfile
#
# class User
#
#   include DataMapper::Resource
#
#   property :id, Serial
#   property :email, String
#   # this will store both the password and the salt
#   # It's Text and not String because String holds
#   # only 50 characters by default
#   # and it's not enough for the hash and salt
#   property :password_digest, Text
#
#   # when assigned the password, we don't store it directly
#   # instead, we generate a password digest, that looks like this:
#   # "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"
#   # and save it in the database. This digest, provided by bcrypt,
#   # has both the password hash and the salt. We save it to the
#   # database instead of the plain password for security reasons.
#   def password=(password)
#     self.password_digest = BCrypt::Password.create(password)
#   end
#
# end
