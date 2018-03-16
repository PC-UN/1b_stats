class DisposalPointsController < ApplicationController
  before_action :set_disposal_point, only: [:show, :update, :destroy]

  # GET /disposal_points
  def index
    @disposal_points = DisposalPoint.all

    render json: @disposal_points
  end

  # GET /disposal_points/1
  def show
    render json: @disposal_point
  end

  # POST /disposal_points
  def create
    @disposal_point = DisposalPoint.new(disposal_point_params)

    if @disposal_point.save
      render json: @disposal_point, status: :created, location: @disposal_point
    else
      render json: @disposal_point.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /disposal_points/1
  def update
    if @disposal_point.update(disposal_point_params)
      render json: @disposal_point
    else
      render json: @disposal_point.errors, status: :unprocessable_entity
    end
  end

  # DELETE /disposal_points/1
  def destroy
    @disposal_point.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disposal_point
      @disposal_point = DisposalPoint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def disposal_point_params
      params.require(:disposal_point).permit(:disposal_point_name, :disposal_point_address, :city, :department, :country, :residue_category, :residue_type, :residue_name, :location, :schedule, :postconsumption_program_name, :contact_person, :email)
    end
end
