class User < ActiveRecord::Base

  has_many :created_stickies, foreign_key: "creator_id", class_name: "Sticky"
      has_many :edited_stickies, foreign_key: "editor_id", class_name: "Sticky"
  has_many :boards, through: :collaborations
  has_many :boards
  has_many :stickies
  has_many :collaborations, dependent: :destroy
  has_secure_password

  validates :username, :name, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true

end
