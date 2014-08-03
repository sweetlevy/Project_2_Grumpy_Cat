class User < ActiveRecord::Base

  has_secure_password
  has_many  :boards, :through => :collaborations
  validates :username, :name, :email, :password, presence: true
  validates :username, uniqueness: true

end
