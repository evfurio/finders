module WebInStoreShippingAddConfirmationFinder

	#####SHIPPING ADDRESS CONFIRMATION FINDER#########

  # Returns Shipping Address Confirmation First Name + Last Name
	def shipping_add_name
    # unit_test_no_generate: shipping_add_name, span.className(create_ats_regex_string("ats-wis-sacpagename"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpagename")), __method__)
	end

	# Returns Shipping Address Confirmation Address Line 1
	def shipping_add_addrline1
    # unit_test_no_generate: shipping_add_addrline1, span.className(create_ats_regex_string("ats-wis-sacpageaddr1"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpageaddr1")), __method__)
	end
	
	# Returns Shipping Address Confirmation Address Line 2
	def shipping_add_addrline2
    # unit_test_no_generate: shipping_add_addrline2, span.className(create_ats_regex_string("ats-wis-sacpageaddr2"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpageaddr2")), __method__)
	end

	# Returns Shipping Address Confirmation City + State + ZIP
	def shipping_add_citystatezip
    # unit_test_no_generate: shipping_add_citystatezip, span.className(create_ats_regex_string("ats-wis-sacpagecitystatezip"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpagecitystatezip")), __method__)
	end
	
	# Returns Shipping Address Confirmation Country
	def shipping_add_country
    # unit_test_no_generate: shipping_add_country, span.className(create_ats_regex_string("ats-wis-sacpagecountrycode"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpagecountrycode")), __method__)
	end
	
	# Returns Shipping Address Confirmation Phone
	def shipping_add_phone
    # unit_test_no_generate: shipping_add_phone, span.className(create_ats_regex_string("ats-wis-sacpagephno"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpagephno")), __method__)
	end

	# Returns Shipping Address Confirmation Email
	def shipping_add_email
    # unit_test_no_generate: shipping_add_email, span.className(create_ats_regex_string("ats-wis-sacpageemailaddr"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpageemailaddr")), __method__)
	end

	# Returns Shipping Address Confirmation Address Confirmed button
	def shipping_add_addconfm_button
    # unit_test_no_generate: shipping_add_addconfm_button, button.className(create_ats_regex_string("ats-wis-shipaddrconfcontinuebtn"))
		$tracer.trace(__method__)
	  return ToolTag.new(button.className(create_ats_regex_string("ats-wis-shipaddrconfcontinuebtn")), __method__)
	end
	
	# Returns Shipping Address Confirmation Edit Addresses button
	def shipping_add_edit_button
    # unit_test_no_generate: shipping_add_edit_button, button.className(create_ats_regex_string("ats-wis-shipaddrconfeditbtn"))
    $tracer.trace(__method__)
	  return ToolTag.new(button.className(create_ats_regex_string("ats-wis-shipaddrconfeditbtn")), __method__)
	end
	
	# Returns Shipping Address Confirmation Back button
	def shipping_add_back_button
    # unit_test_no_generate: shipping_add_back_button, button.className(create_ats_regex_string("ats-wis-backtoshipaddedit"))
		$tracer.trace(__method__)
	  return ToolTag.new(button.className(create_ats_regex_string("ats-wis-backtoshipaddedit")), __method__)
	end

end
