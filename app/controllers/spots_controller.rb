class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @spots = Spot.order('name').page params[:page]
    respond_with(@spots)
  end

  def show
    respond_with(@spot)
  end

  def new
    @spot = Spot.new
    respond_with(@spot)
  end

  def edit
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.save
    respond_with(@spot)
  end

  def update
    @spot.update(spot_params)
    respond_with(@spot)
  end

  def destroy
    @spot.destroy
    respond_with(@spot)
  end

  private
    def set_spot
      @spot = Spot.find(params[:id])
    end

    def spot_params
      params.require(:spot).permit(:name, :add1, :add2, :city, :state, :zipcode, :status, :maintainer)
    end
end
