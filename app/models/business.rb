class Business < ApplicationRecord
     validates :name, presence: true, length: {minimum: 7}
    validates :address, presence: true, length: {minimum: 7}
end
