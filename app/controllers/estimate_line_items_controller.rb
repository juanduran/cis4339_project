class EstimateLineItemsController < ApplicationController
  before_action :set_estimate_line_item, only: [:show, :edit, :update, :destroy]

  # GET /estimate_line_items
  # GET /estimate_line_items.json
  def index
    @estimate_line_items = EstimateLineItem.all
  end

  # GET /estimate_line_items/1
  # GET /estimate_line_items/1.json
  def show
  end

  # GET /estimate_line_items/new
  def new
    @estimate_line_item = EstimateLineItem.new
  end

  # GET /estimate_line_items/1/edit
  def edit
  end

  # POST /estimate_line_items
  # POST /estimate_line_items.json
  def create
    @estimate_line_item = EstimateLineItem.new(estimate_line_item_params)

    respond_to do |format|
      if @estimate_line_item.save
        format.html { redirect_to @estimate_line_item, notice: 'Estimate line item was successfully created.' }
        format.json { render :show, status: :created, location: @estimate_line_item }
      else
        format.html { render :new }
        format.json { render json: @estimate_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estimate_line_items/1
  # PATCH/PUT /estimate_line_items/1.json
  def update
    respond_to do |format|
      if @estimate_line_item.update(estimate_line_item_params)
        format.html { redirect_to @estimate_line_item, notice: 'Estimate line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @estimate_line_item }
      else
        format.html { render :edit }
        format.json { render json: @estimate_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estimate_line_items/1
  # DELETE /estimate_line_items/1.json
  def destroy
    @estimate_line_item.destroy
    respond_to do |format|
      format.html { redirect_to estimate_line_items_url, notice: 'Estimate line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estimate_line_item
      @estimate_line_item = EstimateLineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estimate_line_item_params
      params.require(:estimate_line_item).permit(:quantity, :estimate_id, :service_id)
    end
end
