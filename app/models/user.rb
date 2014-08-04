class User < ActiveRecord::Base


  has_many :boards, through: :collaborations
  has_many :boards
  has_many :stickies
  has_many :collaborations, dependent: :destroy

  has_secure_password
  validates :username, :name, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true

end
