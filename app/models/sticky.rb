class Sticky < ActiveRecord::Base

  has_and_belongs_to_many :categories
  has_one :board, through: :categories
  has_many :children, class_name: "Sticky"
  has_and_belongs_to_many :user


  validates :title, :content, presence: true
  validates :title, :content, uniqueness: true
  # validates :position_x, uniqueness: true, scope: :posiiton_y
  # validates :position_y, uniqueness: true, scope: :posiiton_x
end
