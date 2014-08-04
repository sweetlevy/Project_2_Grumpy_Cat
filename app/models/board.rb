class Board < ActiveRecord::Base
  has_many :stickies, through: :categories, dependent: :destroy
  has_and_belongs_to_many :collaborations

  belongs_to :creator, class_name: "User"
  has_many :users, through: :collaborations
  has_many :categories
  has_many :collaborations, dependent: :destroy
  has_many :stickies, through: :categories, dependent: :destroy

  validates :title, presence: true, on: :create
  validates :title, uniqueness: true, on: :create

  # validates :category, presence: true, :string, default: "all"

  validates :category, uniqueness: true
  validates :category, presence: true

end
