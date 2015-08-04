class AssocFile < FixedLengthFileValidation
  Assoc_FILE_LAYOUT = { :parent =>  8, :child => 8, :assoc_type => 15, :childassoc_type => 5, :streetdate => 10, :allowitemcorrect => 1 }
  def initialize(previous_file, current_file)
    super(Assoc_FILE_LAYOUT, previous_file, current_file)
  end
end