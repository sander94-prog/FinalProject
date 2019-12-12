class Lot < ApplicationRecord
    validates :name, presence: true, length: {minimum: 4}
     validates :address, presence: true, length: {minimum: 7}
     validates :spots, presence: true, length:{minimum: 1}
end
