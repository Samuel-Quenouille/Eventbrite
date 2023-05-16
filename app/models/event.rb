class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    
    validates :title, presence: true, length: { minimum: 5, maximum: 140 }
    validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
    validates :start_date, presence: true 
    validates :duration, presence: true, numericality: { greater_than: 0, divisible_by: 5 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
    validates :location, presence: true
end
