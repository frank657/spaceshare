class Api::V1::SpacesController < Api::V1::BaseController
  before_action :set_space, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    # binding.pry
    if params[:district].nil?
      @spaces = Space.all
    else
      @spaces = Space.where(district: params[:district])
    end
  end

  def show
  end

  def create
    # current_user
    @space = Space.new(space_params)
    # binding.pry
    # @space.user = @user
    # s.full_address = "#{s.address_details}, #{s.district}, Shanghai"
    if @space.save
      # @space.user.manager = true
      # @space.user.save
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
    @user = @space.user
    @space.delete
    @user.update(manager: false) if @user.spaces == 0
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :district, :user_id, :address_details, :picture, :price, :available_spots, :wifi, :sofa_area, :coffee, :beer, :purified_air)
  end
end
