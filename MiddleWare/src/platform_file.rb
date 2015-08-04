class PlatformFile < FixedLengthFileValidation
  PLATFORM_FILE_LAYOUT = { :platform => 8, :title => 24 }
  def initialize(previous_file, current_file)
    super(PLATFORM_FILE_LAYOUT, previous_file, current_file, [:platform])
  end
end