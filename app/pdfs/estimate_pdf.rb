class EstimatePdf < Prawn::Document

  def initialize(estimate, view)
    super(top_margin: 70)
    @estimate = estimate
    @view = view
    estimate_number
    line_items
    total_price
  end

  def estimate_number
    image "app/assets/images/client_logo.jpg", position: :left, :height => 50, :vposition => -60
    text "Estimate \##{@estimate.id}", size: 30, style: :bold
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