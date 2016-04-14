class VehicleCheckoutsController < ApplicationController
  before_action :set_vehicle_checkout, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_checkouts
  # GET /vehicle_checkouts.json
  def index
    @vehicle_checkouts = VehicleCheckout.all
  end

  # GET /vehicle_checkouts/1
  # GET /vehicle_checkouts/1.json
  def show
  end

  # GET /vehicle_checkouts/new
  def new
    @vehicle_checkout = VehicleCheckout.new
  end

  # GET /vehicle_checkouts/1/edit
  def edit
  end

  # POST /vehicle_checkouts
  # POST /vehicle_checkouts.json
  def create
    @vehicle_checkout = VehicleCheckout.new(vehicle_checkout_params)

    respond_to do |format|
      if @vehicle_checkout.save
        format.html { redirect_to @vehicle_checkout, notice: 'Vehicle checkout was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_checkout }
      else
        format.html { render :new }
        format.json { render json: @vehicle_checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_checkouts/1
  # PATCH/PUT /vehicle_checkouts/1.json
  def update
    respond_to do |format|
      if @vehicle_checkout.update(vehicle_checkout_params)
        format.html { redirect_to @vehicle_checkout, notice: 'Vehicle checkout was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_checkout }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_checkouts/1
  # DELETE /vehicle_checkouts/1.json
  def destroy
    @vehicle_checkout.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_checkouts_url, notice: 'Vehicle checkout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_checkout
      @vehicle_checkout = VehicleCheckout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_checkout_params
      params.require(:vehicle_checkout).permit(:checkout_date, :return_date, :crew_id, :vehicle_id)
    end
end
