class EquipmentCheckoutsController < ApplicationController
  before_action :set_equipment_checkout, only: [:show, :edit, :update, :destroy]

  # GET /equipment_checkouts
  # GET /equipment_checkouts.json
  def index
    @equipment_checkouts = EquipmentCheckout.all
  end

  # GET /equipment_checkouts/1
  # GET /equipment_checkouts/1.json
  def show
  end

  # GET /equipment_checkouts/new
  def new
    @equipment_checkout = EquipmentCheckout.new
  end

  # GET /equipment_checkouts/1/edit
  def edit
  end

  # POST /equipment_checkouts
  # POST /equipment_checkouts.json
  def create
    @equipment_checkout = EquipmentCheckout.new(equipment_checkout_params)

    respond_to do |format|
      if @equipment_checkout.save
        format.html { redirect_to @equipment_checkout, notice: 'Equipment checkout was successfully created.' }
        format.json { render :show, status: :created, location: @equipment_checkout }
      else
        format.html { render :new }
        format.json { render json: @equipment_checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_checkouts/1
  # PATCH/PUT /equipment_checkouts/1.json
  def update
    respond_to do |format|
      if @equipment_checkout.update(equipment_checkout_params)
        format.html { redirect_to @equipment_checkout, notice: 'Equipment checkout was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_checkout }
      else
        format.html { render :edit }
        format.json { render json: @equipment_checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_checkouts/1
  # DELETE /equipment_checkouts/1.json
  def destroy
    @equipment_checkout.destroy
    respond_to do |format|
      format.html { redirect_to equipment_checkouts_url, notice: 'Equipment checkout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_checkout
      @equipment_checkout = EquipmentCheckout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_checkout_params
      params.require(:equipment_checkout).permit(:checkout_date, :return_date, :employee_id, :equipment_id)
    end
end
