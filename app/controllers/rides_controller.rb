class RidesController < ApplicationController
    def create
        @ride = Ride.new(ride_params)
        if @ride.take_ride.include?("Sorry.")
            redirect_to @ride.user, notice: @ride.take_ride
        else
            @ride.save
            redirect_to @ride.user, notice: "Thanks for riding the #{@ride.attraction.name}!"
        end
    end

    private

    def ride_params
        params.require(:ride).permit(:user_id, :attraction_id)
    end
end
