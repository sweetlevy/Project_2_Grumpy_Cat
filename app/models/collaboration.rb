class Collaboration < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
  validates :title, presence: true
end
