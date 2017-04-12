class Story < ApplicationRecord
  validates :title, presence: true
  validates :link, format: { with: /\A(http|https)/ }

  belongs_to :user

end
