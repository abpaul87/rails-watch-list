class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, exclusion: [nil]
  validates :name, uniqueness: true
end
