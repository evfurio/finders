class PREFile < FixedLengthFileValidation
  PRE_FILE_LAYOUT = { :delete =>  [1, 'N'], :UPC_number => [20,'(\d{20}|^$)'], :SKU => [8,'(\d{8}|^$)'] }
  def initialize(previous_file, current_file)
    super(PRE_FILE_LAYOUT, previous_file, current_file)
  end
end