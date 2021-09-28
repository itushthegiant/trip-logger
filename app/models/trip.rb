class Trip < ApplicationRecord
    belongs_to :user

    validates :destination, :date, :duration, :cost, presence: true
end
