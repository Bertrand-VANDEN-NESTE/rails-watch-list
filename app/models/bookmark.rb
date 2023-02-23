class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true, uniqueness: true
  validates :list, presence: true, uniqueness: true
  validates :comment, presence: true, length: { minimum: 6 }
end
