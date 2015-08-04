module WebInStoreAccountInfoFinder

    # Returns the page label "Shipping Information for this Order".
    def shipping_information_label
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-shippingpage")), __method__)
    end

    # Returns the button 'Clear All Fields'.
    def clear_all_fields_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-clearfields")), __method__)
    end

    # Returns country code drop down field.
    def country_selector
        $tracer.trace(__method__)
        return WebInStoreSelector.new(ToolTag.new(div.select.className(create_ats_regex_string("ats-wis-country")), __method__))
    end

    # Returns first name field.
    def first_name_field
	    $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-fname")), __method__)
    end

    # Returns last name field.
    def last_name_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-lname")), __method__)
    end

    # Returns address line1 field.
    def address_line_1_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-line1")), __method__)
    end

    # Returns address line2 field.
    def address_line_2_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-line2")), __method__)
    end

    # Returns city field.
    def city_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-city")), __method__)
    end

    # Returns state drop down field.
    def state_selector
        $tracer.trace(__method__)
        return WebInStoreSelector.new(ToolTag.new(jquery("select[class~='ats-wis-state']:visible"), __method__))
    end

    # Returns postal code field.
    def postal_code_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-zip")), __method__)
    end

    # Returns Phone field.
    def phone_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-phone")), __method__)
    end

    # Returns Email field.
    def email_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-email")), __method__)
    end

    # Returns confirm email field.
    def confirm_email_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-confirmemail")), __method__)
    end

    # Returns field validation error messages panel.

    # Returns customer search label when customer is unknown
    def customer_search_label
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-custsearchlbl")), __method__)
    end

    # Returns search field by last name.
    def search_last_name_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-searchlname")), __method__)
    end

    # Returns search field by postal code.
    def search_postal_code_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-searchzip")), __method__)
    end

    # Returns search field by phone.
    def search_phone_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-searchphone")), __method__)
    end

    # Returns search field by email.
    def search_email_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-searchemail")), __method__)
    end

    # Returns search field by PUR number.
    def search_pur_field
        $tracer.trace(__method__)
        #return ToolTag.new(input.className(create_ats_regex_string("(ats-wis-searchPUR|ats-wis-pur)")), __method__)
        return ToolTag.new(jquery("input[class~='ats-wis-pur'], input[class~='ats-wis-searchPUR']"), __method__)
    end

    # Returns cuatomer search/go button.
    def search_go_button
        $tracer.trace(__method__)
        #return ToolTag.new(button.className(create_ats_regex_string("(ats-wis-search|ats-wis-orderlookupsubmitbtn)")), __method__)
        return ToolTag.new(jquery("button[class~='ats-wis-orderlookupsubmitbtn'], button[class~='ats-wis-search']"), __method__)
    end

    # Returns address varification checkbox.
    def address_verification_checkbox
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-verifyaddrcheckbox")), __method__)
    end

	#####SHIPPING ADDRESS CONFIRMATION FINDER#########

	   # Returns Shipping Address Confirmation First Name + Last Name
	def shipping_add_name
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpagename")), __method__)
	end

	# Returns Shipping Address Confirmation Address Line 1
	def shipping_add_addrline1
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpageaddr1")), __method__)
	end
	
	# Returns Shipping Address Confirmation Address Line 2
	def shipping_add_addrline2
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpageaddr2")), __method__)
	end

	# Returns Shipping Address Confirmation City + State + ZIP
	def shipping_add_citystatezip
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpagecitystatezip")), __method__)
	end
	
	# Returns Shipping Address Confirmation Country
	def shipping_add_country
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpagecountrycode")), __method__)
	end

	# Returns Shipping Address Confirmation Phone
	def shipping_add_phone
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpagephno")), __method__)
	end

	# Returns Shipping Address Confirmation Email
	def shipping_add_email
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sacpageemailaddr")), __method__)
	end

	# Returns Shipping Address Confirmation Address Confirmed button
	def shipping_add_addconfm_button
		$tracer.trace(__method__)
	    return ToolTag.new(button.className(create_ats_regex_string("ats-wis-shipaddrconfcontinuebtn")), __method__)
	end
	
	# Returns Shipping Address Confirmation Edit Addresses button
	def shipping_add_edit_button
		$tracer.trace(__method__)
	    return ToolTag.new(button.className(create_ats_regex_string("ats-wis-shipaddrconfeditbtn")), __method__)
	end
	
	# Returns Shipping Address Confirmation Back button
	def shipping_add_back_button
		$tracer.trace(__method__)
	    return ToolTag.new(button.className(create_ats_regex_string("ats-wis-backtoshipaddedit")), __method__)
	end

end
