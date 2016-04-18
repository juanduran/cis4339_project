class InvoicePdf < Prawn::Document

  def initialize(invoice, view)
    super(top_margin: 70)
    @invoice = invoice
    @view = view
    invoice_number
    line_items
    total_price
  end

  def invoice_number
    text "Invoice \##{@invoice.id}", size: 30, style: :bold
  end


  def line_items
    move_down 20
    table line_item_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
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
    text "Total Price #{@invoice.invoice_total}"
  end


end