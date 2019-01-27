class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :user_to_microposts
  has_many :bookmarkers, through: :user_to_microposts, source: :user
end
