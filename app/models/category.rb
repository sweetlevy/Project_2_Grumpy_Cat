class Category < ActiveRecord::Base
  has_one :board
  validates :title, presence: true
end
