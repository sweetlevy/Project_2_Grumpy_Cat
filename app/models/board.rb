class Board < ActiveRecord::Base
<<<<<<< HEAD
  has_many :stickies, through: :categories
=======
  has_many :stickies, through: categories
>>>>>>> d819fe7bbd3e170dc7d3c99c7fa2796b4a11269d
  has_and_belongs_to_many :collaborations
  has_many :users, through: :collaborations

  validates :title, presence: true, on: :create
  validates :title, uniqueness: true, on: :create
<<<<<<< HEAD
  validates :category, presence: true, :string, default: "all"
  validates :category, uniqueness: true

=======
  validates :categories, uniqueness: true
>>>>>>> d819fe7bbd3e170dc7d3c99c7fa2796b4a11269d
end
