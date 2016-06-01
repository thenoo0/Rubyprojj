class RentalsController < ApplicationController

	def new
		@vehicle = Vehicle.find(params[:id])
		@rental = @vehicle.rentals.build
	end

	def create
		@vehicle =Vehicle.find(params[:id])
		@rental=@vehicle.rentals.build(params.require(:rental).permit(:custom, :borrowed_on, :returned_on, :description  ))
		

		if @rental.save
			redirect_to new_rental_path(:id=>@vehicle.id)
		end

	end

	private
	def rental_params
      params.require(:rental).permit(:custom, :borrowed_on, :returned_on, :description )
    end

end
