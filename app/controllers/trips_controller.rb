class TripsController < ApplicationController
    before_action :find_trip, only: [:update, :show, :destroy]

    # show all trips
    def index
        trips = Trip.all
        render json: trips, status: :ok
    end

    # create a trip
    def create
        trip = Trip.create(trip_params)
        render json: trip, status: :created
    end

    # show trip trips/:id
    def show
        render json: @trip, status: :ok
    end

    # update trip trips/:id
    def update
        @trip.update(trip_params)
        render json: @trip, status: :ok
    end

    # destroy trip trips/:id
    def destroy
        @trip.destroy
        head :no_content
    end


    private

    def find_trip
         @trip = Trip.find_by(id: params[:id])
    end

    def trip_params
        params.permit(:destination, :date, :duration, :cost, :user_id)
    end

end
