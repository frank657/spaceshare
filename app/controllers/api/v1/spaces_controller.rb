class Api::V1::SpacesController < Api::V1::BaseController
  before_action :set_space, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    @spaces = Space.all
  end

  def show
  end

  def create
    # current_user
    @space = Space.new(space_params)
    # binding.pry
    # @space.user = @user
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
    params.require(:space).permit(:name, :district, :user_id, :address_details, :picture, :price, :available_spots, :wifi, :sofa_area, :coffee, :beer, :purified_air)
  end
end
