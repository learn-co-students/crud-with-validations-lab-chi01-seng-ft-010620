class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: {scope: :release_year, message: "Can only release one wwith this title a year"}
    validates :release_year, presence: true, if: :released?
    validates :release_year, numericality: { less_than_or_equal_to: Date.today.year, allow_nil: true }
    validates :artist_name, presence: true
end
