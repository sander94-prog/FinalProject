class Reservation < ApplicationRecord
    validates :lot, presence: true, length: {minimum: 3}
    validates :license, presence: true, length: {minimum: 6}
    validates :make, presence: true, length: {minimum: 3}
    validates :model, presence: true, length: {minimum: 2}
end
