class Board < ActiveRecord::Base
  has_many :stickies, through: categories
  has_and_belongs_to_many :collaborations
  has_many :users, through: :collaborations

  validates :title, presence: true, on: :create
  validates :title, uniqueness: true, on: :create
  validates :categories, uniqueness: true
end
