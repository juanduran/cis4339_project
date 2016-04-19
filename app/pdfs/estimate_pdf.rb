class EstimatePdf < Prawn::Document

  def initialize(estimate, view)
    super(top_margin: 70)
    @estimate = estimate
    @view = view
    estimate_number
    customer_info
    line_items
    total_price
  end

  def estimate_number
    image "app/assets/images/client_logo.jpg", position: :left, :height => 50, :vposition => -60
    text "Estimate \##{@estimate.id}", size: 30, style: :bold
  end

  def customer_info
    move_down 20
    text "<b>Customer Name:</b> #{@estimate.customer.customer_name}", :inline_format => true
    text "<b>Phone:</b> #{@estimate.customer.phone_number}", :inline_format => true
    text "<b>Email"":</b> #{@estimate.customer.email}", :inline_format => true
    text "<b>Address:</b> #{@estimate.customer.street_address}", :inline_format => true
    text "<b>City:</b> #{@estimate.customer.city}", :inline_format => true
    text "<b>State:</b> #{@estimate.customer.state}", :inline_format => true
    text "<b>Zip:</b> #{@estimate.customer.zip}", :inline_format => true
    stroke_color "000000"
    move_down 20
    stroke do
      horizontal_rule
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
        @estimate.estimate_line_items.map do |item|
          [item.service.name, item.quantity, price(item.service.price)]
        end
  end


  def total_price
    move_down(20)
    text "Total Price #{@estimate.total}", size: 16, style: :bold
  end


end