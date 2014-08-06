class Board < ActiveRecord::Base
  has_many :stickies, through: :categories, dependent: :destroy
  has_many :collaborations
  #points back to user model, so that the user_id is added to creator_id
  belongs_to :creator, :foreign_key => "creator_id",class_name: "User"
  #points back to user model, so that the user_id is added to editor_id
  belongs_to :editor, :foreign_key => "editor_id", class_name: "User"
  has_many :users, through: :collaborations
  has_many :categories

  validates :title, presence: true, on: :create
  validates :title, uniqueness: true, on: :create

  # validates :category, presence: true, :string, default: "all"

  # validates :category, uniqueness: true


end
