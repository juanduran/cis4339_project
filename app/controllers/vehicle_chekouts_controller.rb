class VehicleChekoutsController < ApplicationController
  before_action :set_vehicle_chekout, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_chekouts
  # GET /vehicle_chekouts.json
  def index
    @vehicle_chekouts = VehicleChekout.all
  end

  # GET /vehicle_chekouts/1
  # GET /vehicle_chekouts/1.json
  def show
  end

  # GET /vehicle_chekouts/new
  def new
    @vehicle_chekout = VehicleChekout.new
  end

  # GET /vehicle_chekouts/1/edit
  def edit
  end

  # POST /vehicle_chekouts
  # POST /vehicle_chekouts.json
  def create
    @vehicle_chekout = VehicleChekout.new(vehicle_chekout_params)

    respond_to do |format|
      if @vehicle_chekout.save
        format.html { redirect_to @vehicle_chekout, notice: 'Vehicle chekout was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_chekout }
      else
        format.html { render :new }
        format.json { render json: @vehicle_chekout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_chekouts/1
  # PATCH/PUT /vehicle_chekouts/1.json
  def update
    respond_to do |format|
      if @vehicle_chekout.update(vehicle_chekout_params)
        format.html { redirect_to @vehicle_chekout, notice: 'Vehicle chekout was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_chekout }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_chekout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_chekouts/1
  # DELETE /vehicle_chekouts/1.json
  def destroy
    @vehicle_chekout.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_chekouts_url, notice: 'Vehicle chekout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_chekout
      @vehicle_chekout = VehicleChekout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_chekout_params
      params.require(:vehicle_chekout).permit(:checkout_date, :return_date, :crew_id, :vehicle_id)
    end
end
