
class Parking < ApplicationRecord
     has_many :spaces 
     validates :name, presence: true, length: {minimum: 4}
     validates :address, presence: true, length: {minimum: 7}
     validates :number, presence: true, length:{minimum: 5}
end
