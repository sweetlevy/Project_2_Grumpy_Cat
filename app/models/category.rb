class Category < ActiveRecord::Base
  belongs_to :board
  has_many :stickies, delete: :destroy
  validates :title, presence: true

end
