class User < ApplicationRecord
  has_many :grades
  has_one :student
  has_one :parent


  def password
    @_password ||= BCrypt::Password.new(password_hash)
  end

  def password=(unhashed_password)
    @_password = BCrypt::Password.create(unhashed_password)
    self.password_hash = @_password
  end

  def author?
    membership_type == "author"
  end

  def member?
    membership_type == "member"
  end

  def generate_email
    self.email = self.full_name.downcase.split(" ").join("") + "@gwu.edu"
    self.save
  end

  def default_password
    self.password = "password"
    self.save
  end

end
