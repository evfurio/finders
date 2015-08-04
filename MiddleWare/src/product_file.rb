class ProductFile < FixedLengthFileValidation
  PRODUCT_FILE_LAYOUT = { :delete => [1, 'N'], :sku => [8, '(?!0001)\d{8}'], :department => 4, :sub_department => 4, :allow_presell => [2, '(00|01)'], :presell_min_deposit => 8, :status_code => 2,
                          :receipt_description => 17, :vendor_number => 7, :filler => 1, :field_destroy_ind => [1, '(Y|N)'], :esrb_rating => 4, :cycle_count_priority => 2,
                          :long_description => 36, :manufacturer_id => 7, :street_date => [6, '((\d\d(?:0[1-9]|1[012])(?:0[1-9]|1[1-9]|2[1-9]|3[0-1]))|^$)'], :serial_capture_flag => [2, '(00|01|02)'], :commission => 8, :is_dlc => [1, '(0|1)'],
                          :platform_id => 8, :program_id => 5, :renewal_sku_flag => 1, :duration_in_days => 4, :return_warehouse => 5, :vendor_auth_date => [6, '((\d\d(?:0[1-9]|1[012])(?:0[1-9]|1[1-9]|2[1-9]|3[0-1]))|^$)'] }
  def initialize(previous_file, current_file)
    super(PRODUCT_FILE_LAYOUT, previous_file, current_file, [:sku])
  end
end