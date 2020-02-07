class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: true

    validates :released, inclusion: {in:[true,false]}
    # validates :release_year, presence: true, if: :released
    # validates :release_year, numericality: {less_than_or_equal_to: Date.current.year}
    validates :artist_name, presence: true

    with_options if: :released? do |song|
        song.validates :release_year, presence: true
        song.validates :release_year, numericality: {
          less_than_or_equal_to: Date.today.year}
        end

          def released?
            released
          end

  
end
