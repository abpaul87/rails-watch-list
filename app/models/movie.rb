class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true
  validates :title, exclusion: [nil]
  validates :overview, exclusion: [nil, '']
end
