class Sticky < ActiveRecord::Base

  has_and_belongs_to_many :categories
  has_one :board, through: :categories
  has_many :children, class_name: "Sticky"
  has_and_belongs_to_many :user


  validates :title, :content, presence: true
  validates :title, :content, uniqueness: true
  validates :category_id, uniqueness: , scope: [:position_x, :position_y ]
  # validates :position_y, uniqueness: , scope: :board_id
end
