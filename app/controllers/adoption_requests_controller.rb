class AdoptionRequestsController < ApplicationController
  before_action :set_adoption_request, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @adoption_requests = AdoptionRequest.all
    respond_with(@adoption_requests)
  end

  def show
    @spot = @adoption_request.spot
    respond_with(@adoption_request)
  end

  def new
    @adoption_request = AdoptionRequest.new
    @spot = Spot.find(params[:spot_id]) if params[:spot_id]
    respond_with(@adoption_request)
  end

  def edit
  end

  def create
    @adoption_request = AdoptionRequest.new(adoption_request_params)
    @adoption_request.save
    respond_with(@adoption_request)
  end

  def update
    @adoption_request.update(adoption_request_params)
    respond_with(@adoption_request)
  end

  def destroy
    @adoption_request.destroy
    respond_with(@adoption_request)
  end

  private
    def set_adoption_request
      @adoption_request = AdoptionRequest.find(params[:id])
    end

    def adoption_request_params
      params.require(:adoption_request).permit(:group_name, :no_of_volunteers, :first_name, :last_name, :add1, :city, :state, :zipcode, :email, :phone, :category_id, :spot_id, :avatar)
    end
end
