class User < ActiveRecord::Base

  has_secure_password
  has_many  :boards, through: :collaborations
  has_many :stickies
  validates :username, :name, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true

end
