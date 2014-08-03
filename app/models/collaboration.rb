class Collaboration < ActiveRecord::Base
  validates :title, presence: true
end
