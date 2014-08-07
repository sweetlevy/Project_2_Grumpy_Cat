class Category < ActiveRecord::Base
  belongs_to :board
  has_many :stickies, dependent: :destroy
  validates :title, presence: true
end
