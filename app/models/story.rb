class Story < ApplicationRecord
  validates :email, presence: true
  validates :title, presence: true
  validates :link, format: { with: /\A(http|https)/ }
end
