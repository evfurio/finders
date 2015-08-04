class StoreFile < FixedLengthFileValidation
  STORE_FILE_LAYOUT = { :delete =>  [1, 'N'], :number => 5, :name => 20, :address1 => 30, :address2 => 30, :city => 30, :state => 3, :zip => [12, '\d{5}'],
                        :county => 30, :phone1 => [20, '(\d{10}|^$)'], :phone2 => [20,'(\d{10}|^$)'], :phone3 => [20, '(\d{10}|^$)'], :country => 6, :branding => [25, '(G|M|R|U|V|B|P|T|C|S|I)'], :open_sunday => 1,
                        :ups_account => 10, :ups_book_1 => 10, :ups_book_2 => 10, :mail_name => 50 }
  def initialize(previous_file, current_file)
    super(STORE_FILE_LAYOUT, previous_file, current_file, [:number])
  end
end