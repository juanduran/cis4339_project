class VehicleCheckoutsController < ApplicationController
  before_action :set_vehicle_chekout, only: [:show, :edit, :update, :destroy]

  # GET /VehicleCheckouts
  # GET /VehicleCheckouts.json
  def index
    vehicle_checkouts = VehicleCheckout.all
  end

  # GET /VehicleCheckouts/1
  # GET /VehicleCheckouts/1.json
  def show
  end

  # GET /VehicleCheckouts/new
  def new
    vehicle_checkout = VehicleCheckout.new
  end

  # GET /VehicleCheckouts/1/edit
  def edit
  end

  # POST /VehicleCheckouts
  # POST /VehicleCheckouts.json
  def create
    vehicle_checkout = VehicleCheckout.new(vehicle_chekout_params)

    respond_to do |format|
      if vehicle_checkout.save
        format.html { redirect_to vehicle_checkout, notice: 'Vehicle chekout was successfully created.' }
        format.json { render :show, status: :created, location: vehicle_checkout }
      else
        format.html { render :new }
        format.json { render json: vehicle_checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /VehicleCheckouts/1
  # PATCH/PUT /VehicleCheckouts/1.json
  def update
    respond_to do |format|
      if vehicle_checkout.update(vehicle_chekout_params)
        format.html { redirect_to vehicle_checkout, notice: 'Vehicle chekout was successfully updated.' }
        format.json { render :show, status: :ok, location: vehicle_checkout }
      else
        format.html { render :edit }
        format.json { render json: vehicle_checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /VehicleCheckouts/1
  # DELETE /VehicleCheckouts/1.json
  def destroy
    vehicle_checkout.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_chekouts_url, notice: 'Vehicle chekout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_chekout
      vehicle_checkout = VehicleCheckout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_chekout_params
      params.require(:vehicle_checkout).permit(:checkout_date, :return_date, :crew_id, :vehicle_id)
    end
end
