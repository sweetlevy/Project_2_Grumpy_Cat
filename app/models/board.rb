class Board < ActiveRecord::Base

  has_many :stickies, through: :categories, dependent: :destroy
  has_and_belongs_to_many :collaborations
  has_many :users, through: :collaborations

  validates :title, presence: true, on: :create
  validates :title, uniqueness: true, on: :create
  # validates :category, presence: true, :string, default: "all"
  validates :category, presence: true
  validates :category, uniqueness: true

end
