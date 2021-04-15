class User < ApplicationRecord
  validates :username,presence: true,uniqueness: true,length: {in: 4..12,wrong_length: "Length should be between 4 to 12."}
  validates :password,presence: true,uniqueness: true,length: {in: 6..16,wrong_length: "Length should be between 6 to 16."}
  validates :age,presence: true,uniqueness: true,numericality: {only_integer: true}

  has_many :posts
  has_many :comments
end
