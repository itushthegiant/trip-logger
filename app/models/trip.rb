class Trip < ApplicationRecord
    belongs_to :user

    validates :destination, :date, :duration, :cost, :user_id, presence: true
end
