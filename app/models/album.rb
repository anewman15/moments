class Album < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true

  belongs_to :user
  has_many_attached :photos
end
