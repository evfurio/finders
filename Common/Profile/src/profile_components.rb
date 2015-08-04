# == Overview
# This class houses and provides finders for a list of items in the cart.
# == Usage
# list_item = @browser.cart_list.at(0)
class ProfileAddressList < CommonComponent
    # Returns the address item at the specified index from the list. The item
    # is returned as a GameStopAddressListItem
    # _index_:: zero-based index of the item to be retrieved from the list.
    def at(index)
        return ProfileAddressListItem.new(@tag.at(index))
    end

    # Returns the number of items in the cart.
    def length()
        # If there are no items, return 0 for the length.
        return 0 unless @tag.exists

        return @tag.length
    end
end

# == Overview
# This class houses and provides finders for the address list item (includes Billing, Shipping and Mailing addresses)
# == Usage
# @browser.cart_list.at(0).remove_button.click
class ProfileAddressListItem < CommonComponent

  # Returns the address label of a saved address
  def full_address_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-fulladdrlbl")), format_method(__method__))
  end

  # Returns the Preferred (or Default) address label (ONLY for the one preferred store in the section)
  def default_address_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-defaultaddrlbl")), format_method(__method__))
  end

  # Returns the edit button
  def edit_address_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-editbtn")), format_method(__method__))
  end

  # Returns the delete button
  def delete_address_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-deletebtn")), format_method(__method__))
  end

  # Returns the Make Preferred button (exists on all addresses except for the Preferred one)
  def make_default_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-makedefaultbtn")), format_method(__method__))
  end
  
end


# == Overview
# This class houses and provides finders for the address sections on the Addresses page
# == Usage
# @browser.shipping_address_panel.add_address_button.click
class ProfileAddressPanel < CommonComponent

  # Returns the address section title
  def address_header_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h3.className(create_ats_regex_string("ats-addrheaderlbl")), format_method(__method__))
  end
  
  # Returns the list of address panels for the address section
  def address_list
    $tracer.trace(format_method(__method__))
    return ProfileAddressList.new(@tag.find.span.className(create_ats_regex_string("ats-addrpanel")), format_method(__method__))
  end

  # Returns the add address button for the address section
  def add_address_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-addaddrbtn")), format_method(__method__))
  end

  # Returns an explanation of the mailing addresses to differentiate from shipping (ONLY for the mailing addresses section)
  def mailing_note_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.p.className(create_ats_regex_string("ats-mailnotelbl")), format_method(__method__))
  end

end

# == Overview
# This class houses and provides finders for the add or edit address pop up on the Addresses page
# == Usage
# @browser.popup_address_panel.first_name_field.value = 'John'
class ProfilePopupAddressPanel < CommonComponent

  # Returns the pop up header label for either adding or editing an address
  def popup_address_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h3.className(create_ats_regex_string("ats-popupaddrlbl")), format_method(__method__))
  end
  
  # Returns the name prompt label
  def name_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.label.className(create_ats_regex_string("ats-namelbl")), format_method(__method__))
  end
  
  # Returns the first name input field
  def first_name_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-fnamefield")), format_method(__method__))
  end
  
  # Returns the last name input field
  def last_name_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-lnamefield")), format_method(__method__))
  end
  
  # Returns the address prompt label
  def address_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.label.className(create_ats_regex_string("ats-addrlbl")), format_method(__method__))
  end
  
  # Returns the address line 1 input field
  def address_1_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-line1field")), format_method(__method__))
  end
  
  # Returns the address line 2 input field
  def address_2_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-line2field")), format_method(__method__))
  end
  
  # Returns the city input field
  def city_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-cityfield")), format_method(__method__))
  end
  
  # Returns the state selector (ONLY displayed when country is United States)
  def state_province_selector
    $tracer.trace(format_method(__method__))
	  tag = ToolTag.new(@tag.find.select.className(create_ats_regex_string("ats-usstate")), format_method(__method__))
    return CommonSelector.new(tag)
  end
  
  # Returns the state/province input field (ONLY displayed when country is not the United States)
  def state_province_field
    $tracer.trace(format_method(__method__))
	return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-state")).find.input, format_method(__method__))
  end
  
  # Returns the zip/postal code input field
  def zip_postal_code_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-postalcodefield")), format_method(__method__))
  end
  
  # Returns the country selector field
  def country_selector
    $tracer.trace(format_method(__method__))
	  tag = ToolTag.new(@tag.find.select.className(create_ats_regex_string("ats-countryfield")), format_method(__method__))
    return CommonSelector.new(tag)
  end
  
  # Returns the phone prompt label
  def phone_number_label
    $tracer.trace(format_method(__method__))
	return ToolTag.new(@tag.find.label.className(create_ats_regex_string("ats-phonelbl")), format_method(__method__))
  end
  
  # Returns the phone number input field
  def phone_number_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-phonefield")), format_method(__method__))
  end
  
  # Returns the save button on the address pop up
  def save_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-savebtn")), format_method(__method__))
  end
  
  # Returns the cancel button on the address pop up
  def cancel_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-cancelbtn")), format_method(__method__))
  end
  
  # Returns the default address checkbox.
  def default_address_checkbox
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-defaultaddrbox")), format_method(__method__))
  end
  
   # Returns the default address checkbox label.
  def default_address_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-defaultaddrlbl")), format_method(__method__))
  end
  
  # Returns error message label when entered address values are not valid
  def popup_address_error_label
	  $tracer.trace(format_method(__method__))
	  return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-popupaddrerrorlbl")), format_method(__method__))
  end
  
 end
 
# == Overview
# This class houses and provides finders for the Remove confirm pop up panel on the Addresses page
# == Usage
# @browser.popup_remove_confirm_panel.remove_header_label.should_exist
class ProfilePopupRemovePanel < CommonComponent

	# Returns the header label for the Remove confirm popup on Addresses page
	def remove_header_label
		$tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h1.className(create_ats_regex_string("ats-removehdrlbl")), format_method(__method__))
	end
	
	# Returns the text label for the Remove confirm popup on Addresses page
	def remove_text_label
		$tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.p.className(create_ats_regex_string("ats-removetxtlbl")), format_method(__method__))
	end

	# Returns the Okay button for the Remove confirm popup on Addresses page
	def remove_submit_button
		$tracer.trace(format_method(__method__))
		return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-submitbtn")), format_method(__method__))
	end

	# Returns the Cancel button for the Remove confirm popup on Addresses page
	def remove_cancel_button
		$tracer.trace(format_method(__method__))
		return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-cancelbtn")), format_method(__method__))
	end
  
end 

# == Overview
# This class houses and provides finders for the Max number of addresses confirm pop up panel on the Addresses page
# == Usage
# @browser.popup_max_number_panel.max_number_header_label.should_exist
class ProfilePopupMaxNumPanel < CommonComponent

	# Returns the header label for the Max number confirm popup on Addresses page
	def max_number_header_label
		$tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h1.className(create_ats_regex_string("ats-maxnumlbl")), format_method(__method__))
	end
	
	# Returns the text label for the Max number confirm popup on Addresses page
	def max_number_text_label
		$tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.p.className(create_ats_regex_string("ats-maxnumtxtlbl")), format_method(__method__))
	end

	# Returns the Okay button for the Max number confirm popup on Addresses page
	def max_number_confirm_button
		$tracer.trace(format_method(__method__))
		return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-maxnumconfirmbtn")), format_method(__method__))
	end
  
end 
 
 
# == Overview
# This class houses and provides finders for the Stores panel on the Addresses page
# == Usage
#  @browser.stores_panel.store_header_label.should_exist
class ProfileStoresPanel < CommonComponent

  # Returns the header label for the Stores section on Addresses page
  def store_header_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h3.className(create_ats_regex_string("ats-storeheaderlbl")), format_method(__method__))
  end

  # Returns the list of saved stores in the Stores section on the Addresses page
  def stores_list
    $tracer.trace(format_method(__method__))
    return ProfileStoreList.new(@tag.find.span.className(create_ats_regex_string("ats-storepanel")), format_method(__method__))
  end

  # Returns the Add Store button in the Stores section on the Addresses page
  def add_store_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-addstorebtn")), format_method(__method__))
  end
  
end

# == Overview
# This class houses and provides finders for a list of saved stores.
# == Usage
# list_item = @browser.stores_list.at(0)
class ProfileStoreList < CommonComponent
  # Returns the store item at the specified index from the list. The item
  # is returned as a ProfileStoreList
  # _index_:: zero-based index of the item to be retrieved from the list.
  def at(index)
    return ProfileStoreListItem.new(@tag.at(index))
  end

  # Returns the number of items in the cart.
  def length()
    # If there are no items, return 0 for the length.
    return 0 unless @tag.exists

    return @tag.length
  end
end

# == Overview
# This class houses and provides finders for the stores list item
# == Usage
#  @browser.stores_list.at(0).delete_store_button.click
class ProfileStoreListItem < CommonComponent
  # Returns the saved store address label
  def full_store_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-fullstorelbl")), format_method(__method__))
  end

  # Returns the Preferred Store label (ONLY exists for one store; the first listed)
  def home_store_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-homestorelbl")), format_method(__method__))
  end

  # Returns the Make Preferred button (displays for all other stores not labeled as preferred)
  def make_home_store_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-makehomestorebtn")), format_method(__method__))
  end

  # Returns the Delete button
  def delete_store_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-deletestorebtn")), format_method(__method__))
  end

end

# == Overview
# This class houses and provides finders for the Store Finder pop up panel on the Addresses page
# == Usage
#  @browser.store_finder_panel.store_finder_header_label.should_exist
class ProfilePopupStorePanel < CommonComponent

  # Returns the header label for the Store Finder pop up
  def store_finder_header_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h3.className(create_ats_regex_string("ats-storefinderheaderlbl")), format_method(__method__))
  end

  # Returns the explanatory text in the Store Finder pop up
  def store_finder_text_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.p.className(create_ats_regex_string("ats-storefindertxtlbl")), format_method(__method__))
  end

  # Returns the store search field in the Store Finder pop up
  def store_finder_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-storefinderfield")), format_method(__method__))
  end

  # Returns the Find stores button in the Store Finder pop up
  def find_stores_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-findstoresbtn")), format_method(__method__))
  end

  # Returns the map image in the Store Finder pop up
  def store_finder_map_image
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-storefindermapimg")), format_method(__method__))
  end

  # Returns the search results text when no results are found in the Store Finder pop up
  def store_finder_results_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.p.className(create_ats_regex_string("ats-storefinderresultslbl")), format_method(__method__))
  end

  # Returns the Cancel button in the Store Finder pop up
  def store_finder_cancel_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-cancelbtn")), format_method(__method__))
  end

  # Returns the component for the found list of stores in the Store Finder pop up
  def store_results_list
    $tracer.trace(format_method(__method__))
    return StoreFinderResultsList.new(@tag.find.div.className(create_ats_regex_string("ats-storeresultpanel")), format_method(__method__))
  end

end


# == Overview
# This class houses and provides finders for a list of store results for Store Finder pop up.
# == Usage
# list_item = @browser.pur_address_list.at(0)
class StoreFinderResultsList < CommonComponent
  # Returns the store finder result item at the specified index from the list. The item
  # is returned as a StoreFinderResultsListItem
  # _index_:: zero-based index of the item to be retrieved from the list.
  def at(index)
    return StoreFinderResultsListItem.new(@tag.at(index))
  end

  # Returns the number of items in the list.
  def length()
    # If there are no items, return 0 for the length.
    return 0 unless @tag.exists

    return @tag.length
  end
end

# == Overview
# This class houses and provides finders for the PUR address panel
# == Usage
#  @browser.pur_address_list.at(0).pur_saved_address_label.should_exist
class StoreFinderResultsListItem < CommonComponent

  # Returns the store number label for a found store
  def store_number_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-storenumlbl")), format_method(__method__))
  end

  # Returns the Added label for a found store
  def added_store_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-addedstorelbl")), format_method(__method__))
  end

  # Returns the Add Store button for a found store
  def add_store_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-addstorebtn")), format_method(__method__))
  end

end

# == Overview
# This class houses and provides finders for a list of addresses in the Address Book for PUR Activation.
# == Usage
# list_item = @browser.pur_address_list.at(0)
class PURAddressList < CommonComponent
  # Returns the address item at the specified index from the list. The item
  # is returned as a GameStopAddressListItem
  # _index_:: zero-based index of the item to be retrieved from the list.
  def at(index)
    return PURAddressListItem.new(@tag.at(index))
  end

  # Returns the number of items in the list.
  def length()
    # If there are no items, return 0 for the length.
    return 0 unless @tag.exists

    return @tag.length
  end
end

# == Overview
# This class houses and provides finders for the PUR address panel
# == Usage
#  @browser.pur_address_list.at(0).pur_saved_address_label.should_exist
class PURAddressListItem < CommonComponent
  # Returns the full address label on the PUR address panel.
  def pur_saved_address_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-purfulladdrlbl")), format_method(__method__))
  end

  # Returns the Choose this address button on the PUR address panel.
  def pur_select_address_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.button.className(create_ats_regex_string("ats-purselectbtn")), format_method(__method__))
  end

end
