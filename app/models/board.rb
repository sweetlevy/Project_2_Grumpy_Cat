class Board < ActiveRecord::Base
  has_many :stickies
  has_and_belongs_to_many :collaborators
  has_many :users, through: :collaborators

  validates :title, presence: true, on: :create
  validates :title, uniqueness: true, on: :create
end
