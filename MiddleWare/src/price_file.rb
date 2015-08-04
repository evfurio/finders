class PriceFile < FixedLengthFileValidation
  Price_FILE_LAYOUT = { :SKU =>  8, :retail_price => [14,'(\d+(\.\d{1,4})?)'], :tradein_price => [14,'(\d+(\.\d{1,4})?)'] }
  def initialize(previous_file, current_file)
    super(Price_FILE_LAYOUT, previous_file, current_file, [:SKU])
  end
end