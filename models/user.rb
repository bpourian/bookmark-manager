require 'bcrypt'

class User
  include DataMapper::Resource


  property :id, Serial
  property :email, String, :length => 100
  property :password_hash, String, :length => 100

   include BCrypt
  # def password
  #   @password ||=Password.new(password_hash)
  # end

  def password=(new_password)
    @password = Password.create(new_password)
    p @password
    self.password_hash = @password
    p @password
  end

end
