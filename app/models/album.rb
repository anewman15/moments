class Album < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true
end
