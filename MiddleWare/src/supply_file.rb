class SupplyFile < FixedLengthFileValidation
  Supply_FILE_LAYOUT = { :delete =>  [1, 'A'], :SKU => 8, :name => 36, :hotitemflag => 5, }
  def initialize(previous_file, current_file)
    super(Supply_FILE_LAYOUT, previous_file, current_file, [:SKU])
  end
end