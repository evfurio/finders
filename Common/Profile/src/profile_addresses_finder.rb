module ProfileAddressesFinder

	# Returns the Addresses page title
  def address_book_header_label()
		# unit_test_no_generate: address_book_header_label, h2.className(create_ats_regex_string("ats-addrbooklbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h2.className(create_ats_regex_string("ats-addrbooklbl")), __method__)
	end
	
	# Returns the component for shipping addresses section
	def shipping_address_panel()
		# unit_test_no_generate: shipping_address_panel, section.className(create_ats_regex_string("ats-shipaddrpanel"));ProfileAddressPanel
		$tracer.trace(__method__)
		return ProfileAddressPanel.new(section.className(create_ats_regex_string("ats-shipaddrpanel")), __method__)
	end
	
	# Returns the component for billing addresses section
	def billing_address_panel()
		# unit_test_no_generate: billing_address_panel, section.className(create_ats_regex_string("ats-billaddrpanel"));ProfileAddressPanel
		$tracer.trace(__method__)
		return ProfileAddressPanel.new(section.className(create_ats_regex_string("ats-billaddrpanel")), __method__)
	end
	
	# Returns the component for mailing addresses section
	def mailing_address_panel()
		# unit_test_no_generate: mailing_address_panel, section.className(create_ats_regex_string("ats-mailaddrpanel"));ProfileAddressPanel
		$tracer.trace(__method__)
		return ProfileAddressPanel.new(section.className(create_ats_regex_string("ats-mailaddrpanel")), __method__)
	end
	
	# Returns the component for Stores section on the Addresses page
	def stores_panel()
		# unit_test_no_generate: stores_panel, section.className(create_ats_regex_string("ats-storespanel")); ProfileStoresPanel
		$tracer.trace(__method__)
		return ProfileStoresPanel.new(section.className(create_ats_regex_string("ats-storespanel")), __method__)
	end

  # Returns the component for pop up to add/edit address
	def popup_address_panel
		# unit_test_no_generate: popup_address_panel, div.className(create_ats_regex_string("ats-popupaddrpanel"));ProfilePopupAddressPanel
		$tracer.trace(__method__)
		return ProfilePopupAddressPanel.new(div.className(create_ats_regex_string("ats-popupaddrpanel")), __method__)
	end
	
	# Returns the component for Store Finder pop up on the Addresses page
	def store_finder_panel
		# unit_test_no_generate: store_finder_panel, div.className(create_ats_regex_string("ats-storefinderpanel"));ProfilePopupStorePanel
		$tracer.trace(__method__)
		return ProfilePopupStorePanel.new(div.className(create_ats_regex_string("ats-storefinderpanel")), __method__)
	end

  # Returns the component for the confirm pop up when removing an address/store
	def popup_remove_confirm_panel
		# unit_test_no_generate: popup_remove_confirm_panel, div.className(create_ats_regex_string("ats-removeconfirmpanel"));ProfilePopupRemovePanel
		$tracer.trace(__method__)
		return ProfilePopupRemovePanel.new(div.className(create_ats_regex_string("ats-removeconfirmpanel")), __method__)
	end

  # Returns the component for the mex number of addresses pop up
	def popup_max_number_panel
		# unit_test_no_generate: confirm_panel, div.className(create_ats_regex_string("ats-confirmpanel"));ProfilePopupMaxNumPanel
		$tracer.trace(__method__)
		return ProfilePopupMaxNumPanel.new(div.className(create_ats_regex_string("ats-popupmaxnumpanel")), __method__)
	end

  # Returns the transparent overlay that disables the background when a pop up is open.
  def overlay_panel
    # unit_test_no_generate: overlay_panel, body.className(create_ats_regex_string("ats-overlay"))
    $tracer.trace(__method__)
    return ToolTag.new(body.className(create_ats_regex_string("ats-overlay")), __method__)
  end
end
