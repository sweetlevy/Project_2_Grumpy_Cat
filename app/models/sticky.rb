class Sticky < ActiveRecord::Base

  has_and_belongs_to_many :categories
  has_one :board, through: :categories
  belongs_to :users, through: :sticky_access_right


  validates :title, :content, presence: true
  validates :title, :content, uniqueness: true
end
