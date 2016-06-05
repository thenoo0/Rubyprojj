class AlertsController < ApplicationController
  def new
    @customer =Customer.find(params[:id])
    @alert=@customer.alerts.build
  end

  def create
    @customer = Customer.find(params[:id])
    @alert=@customer.alerts.build(params.require(:alert).permit(:description))

    if @alert.save
      redirect_to new_alert_path(:id=>@customer.id)
    end
  end



  private
    def alert_params
      params.require(:alert).permit (:description )
    end
end
