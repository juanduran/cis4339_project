class EstimatePdf < Prawn::Document

  def initialize(estimate)
    super(top_margin: 70)
    @estimate = estimate
    estimate_pdf
  end

  def estimate_pdf
    text "Estimate \##{@estimate.id}", size: 30, style: :bold
    move_down 20

  end



end