# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#unit_test_no_generate: order_history_detail_label, img.src("/ohistorydetails/")
#unit_test_no_generate: order_list, table.id("/ordersTable/").find.a.id("/lnkOrderDetail/");GameStopOrderList

# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to order history.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopOrderHistoryFinder

  # Returns the order history label.
  def order_history_detail_label
    $tracer.trace(__method__)
    return ToolTag.new(img.className(create_ats_regex_string("ats-ordhistdtlslbl")), __method__)
  end

  # Returns the order history list.
  def order_list
    $tracer.trace(__method__)
    return GameStopOrderList.new(ToolTag.new(table.id(create_ats_regex_string("/ordersTable/")).find.a.id(create_ats_regex_string("/lnkOrderDetail/")), __method__))
  end

  # Returns the OrderLookup EmailTextBox.
  def order_lookup_email
    $tracer.trace(__method__)
    return ToolTag.new(input.id(create_ats_regex_string("/OrderLookup_EmailTextBox/")), __method__)
  end

  # Returns the OrderLookup ConfirmationNumberTextBox list.
  def order_lookup_confirmation_number
    $tracer.trace(__method__)
    return ToolTag.new(input.id(create_ats_regex_string("/OrderLookup_ConfirmationNumberTextBox/")), __method__)
  end
	
	# Returns the OrderLookup OrderLookup SubmitButton list.
  def order_lookup_button
    $tracer.trace(__method__)
    return ToolTag.new(input.id(create_ats_regex_string("/OrderLookup_SubmitButton/")), __method__)
  end
	
	# Returns the Order Number label
	def order_number_label
		$tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-ordnumlbl")), __method__)
	end

	# Returns the Credit Card Holder Name label
	def credit_card_holder_name_label
		$tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-ccholdernamelbl")), __method__)
	end
	
	# Returns the Credit Card Type Label
	def credit_card_type_label
	  $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-cctypelbl")), __method__)
	end
	
	# Returns the Credit Card Number label
	def credit_card_number_label
	  $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-ccnumlbl")), __method__)
	end
	
	# Returns the Subtotal Amount label
	def subtotal_amount_label
	  $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-subttlamtlbl")), __method__)
	end
	
	# Returns the  Handling Amount label
	def handling_amount_label
	  $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-handlingamtlbl")), __method__)
	end
	
	# Returns the Tax Amount label
	def tax_amount_label
		$tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-taxamtlbl")), __method__)
	end
	
	# Returns the Order Total Amount label
	def order_total_amount_label
		$tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-ordttlamtlbl")), __method__)
	end
	
	# Returns the Shipping Group Panel div
	def shipping_group_panel
		$tracer.trace(__method__)
    return GameStopShipGroupPanel.new(div.className(create_ats_regex_string("ats-shipgrppanel")), __method__)
  end

	# Returns the Digital Shipment Group Panel div
	def digital_ship_group_panel
		$tracer.trace(__method__)
    return GameStopDigitalShipGroupPanel.new(div.className(create_ats_regex_string("ats-digitalshipgrppanel")), __method__)
	end
	
	# Returns the Update Credit Card button
	def update_cc_button
		$tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-updtccbtn")), __method__)
	end

    # Returns the Guest Checkout and In-store Orders page header label.
    def order_lookup_label
      #unit_test_no_generate: order_lookup_label, span.className(create_ats_regex_string("ats-ordrlkuplbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-ordrlkuplbl")), __method__)
    end

    # Returns the E-mail Address input field label for the email and order confirmation section.
    def email_address1_label
      #unit_test_no_generate: email_address1_label, span.className(create_ats_regex_string("ats-emailaddr1lbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-emailaddr1lbl")), __method__)
    end

    # Returns the E-mail Address input field label for the email and credit card number section.
    def email_address2_label
      #unit_test_no_generate: email_address2_label, span.className(create_ats_regex_string("ats-emailaddr2lbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-emailaddr2lbl")), __method__)
    end

    # Returns the E-mail Address input field for the email and credit card number section.
    def email_address2_field
      #unit_test_no_generate: email_address2_field, input.className(create_ats_regex_string("ats-emailaddr2field"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-emailaddr2field")), __method__)
    end

    # Returns the Last 4 digits of credit card number input field label for the email and credit card number section.
    def cc_number_label
      #unit_test_no_generate: cc_number_label, span.className(create_ats_regex_string("ats-ccnumlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-ccnumlbl")), __method__)
    end

    # Returns the Last 4 digits of credit card number input field for the email and credit card number section.
    def cc_number_field
      #unit_test_no_generate: cc_number_field, input.className(create_ats_regex_string("ats-ccnumfield"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-ccnumfield")), __method__)
    end

    # Returns the Is Card a PURCC? checkbox label for the email and credit card number section.
    def purcc_label
      #unit_test_no_generate: purcc_label, span.className(create_ats_regex_string("ats-purcclbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-purcclbl")), __method__)
    end

    # Returns the Is Card a PURCC? checkbox for the email and credit card number section.
    def purcc_checkbox
      #unit_test_no_generate: purcc_checkbox, span.className(create_ats_regex_string("ats-purccbox"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-purccbox")), __method__)
    end

    # Returns the Expiration Date field label for the email and credit card number section.
    def cc_expiration_label
      #unit_test_no_generate: cc_expiration_label, span.className(create_ats_regex_string("ats-ccexplbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-ccexplbl")), __method__)
    end

    # Returns the Expiration Date month drop down field for the email and credit card number section.
    def cc_expiration_month_selector
      #unit_test_no_generate: cc_expiration_month_selector, get_self.select.className(create_ats_regex_string("ats-ccexpmonselector")); GameStopSelector
      $tracer.trace(__method__)
      tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-ccexpmonselector")), __method__)
      return GameStopSelector.new(tag)
    end

    # Returns the Expiration Date year drop down field for the email and credit card number section.
    def cc_expiration_year_selector
      #unit_test_no_generate: cc_expiration_year_selector, get_self.select.className(create_ats_regex_string("ats-ccexpyrselector")); GameStopSelector
      $tracer.trace(__method__)
      tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-ccexpyrselector")), __method__)
      return GameStopSelector.new(tag)
    end

    # Returns the Order Lookup button for the email and credit card number section.
    def order_lookup2_button
      #unit_test_no_generate: order_lookup2_button, input.className(create_ats_regex_string("ats-ordrlkup2btn"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-ordrlkup2btn")), __method__)
    end

end
