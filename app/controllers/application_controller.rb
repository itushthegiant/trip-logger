class ApplicationController < ActionController::API

    rescue_from ActiveRecord::RecordInvalid, with: :rescue_from_invalid

    def rescue_from_invalid(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end
end
