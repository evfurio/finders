module GameStopRespMobileCheckoutFinder

	# Returns the "Log Into My Account" button.
	def mgs_buy_as_login_btn
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-buyasaccount")), __method__)
	end

	# Returns the "Checkout As A Guest" button.
	def mgs_buy_as_guest_btn
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-buyasguest")), __method__)
	end

	# Returns the "Create a New Account" button.
	def mgs_buy_as_new_account_btn
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-buyasnew")), __method__)
	end

	# Returns mgs_chkout_cart_modal_btn
	def mgs_chkout_cart_modal_btn
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-cartModal-chkoutBtn")), __method__)
	end
	
  # Returns "Continue CheckOut" on handling page
	def mgs_chkout_cart_page_btn
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-checkoutbtn")), __method__)
	end

	#Age gate
	# Returns the "I am under 17 years of age" button from the age gate.
    def mgs_chkout_over_seventeen_btn
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-ofagebtn")), __method__)
    end	

	# Returns under_seventeen_btn for age gate
    def mgs_chkout_under_seventeen_btn
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-underagebtn")), __method__)
    end
	
	# Returns the "Information message from shopping cart" 
    def mgs_chkout_cart_info_message
        $tracer.trace(__method__)
        return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-infomsg")), __method__)
    end	
	
	#Shipping Page
    def mgs_ship_handling_btn
        $tracer.trace(__method__)
        return ToolTag.new(get_self.button.className(create_ats_regex_string("ats-shippingHandlingButton")), __method__)
    end	
	
	# Returns the "First Name" label Checkout
	def mgs_chkout_first_name_field
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-fnamefield")), __method__)
	end

	# Returns the "Last Name" label Checkout
	def mgs_chkout_last_name_field
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-lnamefield")), __method__)
	end

	# Returns the Purchase Email label Checkout
	def mgs_chkout_email_address_field
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-emailfield")), __method__)
	end
	
	# Returns the Phone Number" label Checkout
	def mgs_chkout_phone_number_field
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-phonefield")), __method__)
	end

	# Returns the Address1" label Checkout
	def mgs_chkout_address_1_field
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-line1field")), __method__)
	end

	# Returns the Address2" label Checkout
	def mgs_chkout_address_2_field
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-line2field")), __method__)
	end

	def mgs_chkout_country_select
		$tracer.trace(__method__)
		return GameStopMobileSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-countryfield")), __method__, self), self)
	end	
	
	# Returns the City" label Checkout
	def mgs_chkout_city_field
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-cityfield")), __method__)
	end

	# Returns the "State" selector.
	def mgs_chkout_state_select
		$tracer.trace(__method__)
		return GameStopMobileSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-usstate")), __method__, self), self)
	end

	# Returns the Zip" label Checkout
	def mgs_chkout_zip_code_field
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-postalcodefield")), __method__)
	end

	# Returns the checkbox for specifying a different or same billing and
	# and shipping address.
	def mgs_chkout_same_address_chkbox
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-sameaddressoptinbox")), __method__)
	end
	
	# Returns shipping and handling Standard
	def mgs_chkout_ship_standard
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-shippingOption_Standard")), __method__)
	end
	
	# Returns shipping and handling Value
	def mgs_chkout_ship_value
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-shippingOption_Value")), __method__)
	end
	
	# Returns shipping and handling One Day
	def mgs_chkout_ship_1day
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-shippingOption_OneDay")), __method__)
	end
	
	# Returns shipping and handling Saver
	def mgs_chkout_ship_saver
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-shippingOption_Saver")), __method__)
	end
	
	# Returns shipping and handling Two Day
	def mgs_chkout_ship_2day
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-shippingOption_TwoDay")), __method__)
	end
	
	# Returns checkout ship page continue button
	def mgs_chkout_ship_continue_btn
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-shippingContinueCheckoutButton")), __method__)
	end
	
	# PAYMENT PAGE
	# Returns checkout pay page continue button
	def mgs_chkout_pay_continue_btn
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-checkoutbtn")), __method__)
	end
	
	# Returns checkout pay page edit billing address
	def mgs_chkout_pay_edit_bill_address
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-editBillingAddress")), __method__)
	end

	# Returns checkout add payment method
	def mgs_chkout_pay_add_payment
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-addNewCard")), __method__)
	end


	
end