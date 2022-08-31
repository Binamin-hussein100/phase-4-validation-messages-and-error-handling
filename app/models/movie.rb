class Movie < ApplicationRecord
    CATEGORIES = ["Drama","Animation","Fantasy","Action","Comedy","Horror","Documentary","Science Fiction"]

    validates :title, presence: true
    validates :year, numericality: {
        greater_than_or_equal_to: 1800,
        less_than_or_equal_to: Date.today.year
    }
    validates :poster_url, presence: true
    validates :category, inclusion: {
        in: CATEGORIES,
        message: "Must be one of: #{CATEGORIES.join(',')}",
    }
end
