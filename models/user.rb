require 'data_mapper'
require 'dm-postgres-adapter'
require 'BCrypt'

class User
	include DataMapper::Resource

	property :id, Serial
	property :email, String
	property :password_digest, String, length: 60

	def password=(password)
		self.password_digest = BCrypt::Password.create(password)
	end

end