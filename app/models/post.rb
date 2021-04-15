class Post < ApplicationRecord
  validates :title,presence: true
  validates :description,presence: true,length: {minimum: 12,wrong_length: "Should be more than 12 letters."}

  belongs_to :user
  has_many :comments
end
