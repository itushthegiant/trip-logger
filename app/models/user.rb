class User < ApplicationRecord
    has_many :trips

    validates :username, presence: true, uniqueness: true
    validates :age, presence: true
end
