class Bojangle < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}
    validates :address, presence: true, length: {minimum: 4}
    validates :spots, presence: true, length: {minimum: 1}
end
