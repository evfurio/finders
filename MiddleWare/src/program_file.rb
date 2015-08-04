class ProgramFile < FixedLengthFileValidation
  Program_FILE_LAYOUT = { :program_id =>  5, :program_name => 36, :loyaltycardid => 4, :discount => 5, :tradeinbonus => 5, :onlineflag => 1, :giflag => 1, :isbaseprogram => 1 }
  def initialize(previous_file, current_file)
    super(Program_FILE_LAYOUT, previous_file, current_file, [:program_id])
  end
end