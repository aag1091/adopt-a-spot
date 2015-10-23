class GroupSpotsController < ApplicationController
  before_action :set_group_spot, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @group_spots = GroupSpot.all
    respond_with(@group_spots)
  end

  def show
    respond_with(@group_spot)
  end

  def new
    @group_spot = GroupSpot.new
    respond_with(@group_spot)
  end

  def edit
  end

  def create
    @group_spot = GroupSpot.new(group_spot_params)
    @group_spot.save
    respond_with(@group_spot)
  end

  def update
    @group_spot.update(group_spot_params)
    respond_with(@group_spot)
  end

  def destroy
    @group_spot.destroy
    respond_with(@group_spot)
  end

  private
    def set_group_spot
      @group_spot = GroupSpot.find(params[:id])
    end

    def group_spot_params
      params.require(:group_spot).permit(:group_id, :spot_id)
    end
end
