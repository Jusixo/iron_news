class Story < ApplicationRecord
  validates :title, presence: true
  validates :link, format: { with: /\A(http|https)/ }

  has_many :comments, dependent: :destroy
  belongs_to :created_by, class_name: "User"

  belongs_to :created_by, class_name: "User"
end
