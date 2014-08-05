class User < ActiveRecord::Base
  #adds new method for retrieving the stickies created by the User.created_stickies => all stickies that the user created
  has_many :created_stickies, :foreign_key => "creator_id",
  :class_name => "Sticky"
  #adds new method for retrieving the boards created by the user User.created_boards => all boards that the user created
  has_many :created_boards, :foreign_key => "creator_id",
  :class_name => "Board"
  #adds new method for retrieving the stickies edited by the user User.edited_stickies => all stickies that the user edited
  has_many :edited_stickies, :foreign_key => "editor_id",
  :class_name => "Sticky"
  #adds new method for retrieving the boards edited by the user User.edited_boards => all boards that the user edited
  has_many :edited_boards, :foreign_key => "editor_id",
  :class_name => "Board"
  has_many :collaborations, dependent: :destroy
  has_secure_password

  has_many :boards, through: :collaborations
  validates :username, :name, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true

end
