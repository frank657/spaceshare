class Api::V1::SpacesController < ApplicationController
  before_action :set_space, only: [:show, :update, :destroy]

  def index
    @spaces = Space.all
  end

  def show
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      render :show
    else
      render_errors
    end
  end

  def update
    if @space.update(space_params)
      render :show
    else
      render_errors
    end
  end

  def destroy
    @space.delete
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :district, :address_details, :picture, :price, :available_spots, :user_id, :wifi, :sofa_area, :coffee, :beer, :purified_air)
  end

  def render_errors
    @space.errors.full_messages
  end
end
