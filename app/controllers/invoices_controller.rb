class InvoicesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  before_action :set_invoice, only: [:show, :edit, :update, :destroy]

  # GET /invoices
  # GET /invoices.json

  def index
    @search = Invoice.search(params[:q])
    @invoices = @search.result
  end

  # GET /invoices/1
  # GET /invoices/1.json
    def show

    @invoice = Invoice.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf do
      pdf = InvoicePdf.new(@invoice, view_context)
      send_data pdf.render, filename: "invoice_#{@invoice.id}.pdf",
                            type: "application/pdf",
                            disposition: "inline"
      end
    end
  end

  # GET /invoices/new
  def new
    @invoice = Invoice.new
  end

  # GET /invoices/1/edit
  def edit
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to @invoice, notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created, location: @invoice }
      else
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to @invoice, notice: 'Invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice.destroy
    respond_to do |format|
      format.html { redirect_to invoices_url, notice: 'Invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      params.require(:invoice).permit(:customer_id, :date, :invoice_total, :terms, :project_id, :crew_id, line_items_attributes: [:id, :invoice_id, :service_id, :quantity, :_destroy])
    end
end
