class Board < ActiveRecord::Base

  belongs_to :creator, class_name: "User"
  has_many :users, through: :collaborations
  has_many :categories
  has_many :collaborations, dependent: :destroy
  has_many :stickies, through: :categories, dependent: :destroy

  validates :title, presence: true, on: :create
  validates :title, uniqueness: true, on: :create

  # validates :category, presence: true, :string, default: "all"
  validates :category, presence: true
  validates :category, uniqueness: true

end
