class Parking < ApplicationRecord
     validates :name, presence: true, length: {minimum: 4}
     validates :address, presence: true, length: {minimum: 7}
end
