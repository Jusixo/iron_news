class Story < ApplicationRecord
  validates :email, presence: true
  validates :title, presence: true

end
