class User < ActiveRecord::Base

  has_many :created_stickies, :foreign_key => "creator_id", :class_name => "Sticky"
  has_many :created_boards, :foreign_key => "creator_id", :class_name => "Board"
  has_many :edited_stickies, :foreign_key => "editor_id", :class_name => "Sticky"
  has_many :edited_boards, :foreign_key => "editor_id", :class_name => "Board"
  has_many :collaborations, dependent: :destroy
  has_secure_password

  has_many :boards, through: :collaborations
  validates :username, :name, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true

end
