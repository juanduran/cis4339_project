class InvoicePdf < Prawn::Document

  def initialize(invoice, view)
    super(top_margin: 70)
    @invoice = invoice
    @view = view
    invoice_number
    customer_info
    crew_assigned
    line_items
    total_price
  end



  def invoice_number

    image "app/assets/images/client_logo.jpg", position: :left, :height => 50, :vposition => -60

    text "Invoice \##{@invoice.id}", size: 20, style: :bold
    stroke_color "000000"
      stroke do
           horizontal_rule
          end
  end

  

  def customer_info
    move_down 20
    text "<b>Customer Name:</b> #{@invoice.customer.customer_name}", :inline_format => true
    text "<b>Phone:</b> #{@invoice.customer.phone_number}", :inline_format => true
    text "<b>Email"":</b> #{@invoice.customer.email}", :inline_format => true
    text "<b>Address:</b> #{@invoice.customer.street_address}", :inline_format => true
    text "<b>City:</b> #{@invoice.customer.city}", :inline_format => true
    text "<b>State:</b> #{@invoice.customer.state}", :inline_format => true
    text "<b>Zip:</b> #{@invoice.customer.zip}", :inline_format => true
    stroke_color "000000"
    move_down 20
    stroke do
      horizontal_rule
    end

  end

  def crew_assigned
    stroke_color "000000"
    stroke do
      horizontal_rule
    end
    move_down 10
    text "Crew Assigned:#{@invoice.crew.crew_name}"

    if @invoice.project.present?
      text "Project: #{@invoice.project.project_name}"
    end

  end

    


  def line_items
    move_down 20
    table line_item_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["BCFFA6", "D3D3D3"]
      self.header = true
    end
  end

  def price(number)
    @view.number_to_currency(number)
  end

  def line_item_rows
    [["Service", "Qty", "Unit Price"]] +
        @invoice.line_items.map do |item|
          [item.service.name, item.quantity, price(item.service.price)]
        end
  end


  def total_price
    move_down(20)
    stroke_color "000000"
    stroke do
      horizontal_rule
    end
    move_down(20)
    text "Total Price #{@invoice.invoice_total}", size: 16, style: :bold
  end


end