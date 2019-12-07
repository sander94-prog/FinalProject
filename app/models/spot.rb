class Spot < ApplicationRecord
    validates :license, presence: true, length: {minimum: 6}
end
