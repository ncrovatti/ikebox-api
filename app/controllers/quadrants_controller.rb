class QuadrantsController < ApplicationController
  before_action :set_quadrant, only: [:show, :update, :destroy]

  # GET /quadrants
  def index
    @quadrants = Quadrant.all

    render json: @quadrants
  end

  # GET /quadrants/1
  def show
    render json: @quadrant
  end

  # POST /quadrants
  def create
    @quadrant = Quadrant.new(quadrant_params)

    if @quadrant.save
      render json: @quadrant, status: :created, location: @quadrant
    else
      render json: @quadrant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quadrants/1
  def update
    if @quadrant.update(quadrant_params)
      render json: @quadrant
    else
      render json: @quadrant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quadrants/1
  def destroy
    @quadrant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quadrant
      @quadrant = Quadrant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quadrant_params
      params.require(:quadrant).permit(:title, :color, :magnitude, :task_id)
    end
end
