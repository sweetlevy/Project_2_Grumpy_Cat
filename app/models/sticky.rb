class Sticky < ActiveRecord::Base

  belongs_to :creator, class_name: "User"
  belongs_to :editor, class_name: "User"
  belongs_to :category
  has_one :board, through: :category


  belongs_to :category

  validates :title, :content, presence: true
  validates_uniqueness_of :title, :content
  validates_uniqueness_of :category_id, scope: [:position_x, :posiiton_y]

end
