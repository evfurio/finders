module ProfileHeaderFinder
	
	# Returns the Personal Info link in the header
	def personal_info_link
		# unit_test_no_generate: personal_info_link, a.className(create_ats_regex_string("ats-personalinfonavlnk"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-personalinfonavlnk")), __method__)
	end
	
	# Returns the Addresses link in the header
	def addresses_link
		# unit_test_no_generate: addresses_link, a.className(create_ats_regex_string("ats-addressesnavlnk"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-addressesnavlnk")), __method__)
	end
	
	# Returns the Orders link in the header
	def orders_link
		# unit_test_no_generate: orders_link, a.className(create_ats_regex_string("ats-ordersnavlnk"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-ordersnavlnk")), __method__)
	end
	
	# Returns the Communications link in the header
	def communications_link
		# unit_test_no_generate: communications_link, a.className(create_ats_regex_string("ats-communicationsnavlnk"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-communicationsnavlnk")), __method__)
	end
	
	# Returns the Payment Methods link in the header
	def payment_method_link
		# unit_test_no_generate: payment_method_link, a.className(create_ats_regex_string("ats-paymentmethodsnavlnk"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-paymentmethodsnavlnk")), __method__)
	end
	
	# Returns the Activate PUR link in the header for a non-activated PUR user
	def activate_pur_link
		# unit_test_no_generate: activate_pur_link, a.className(create_ats_regex_string("ats-activatepurnavlnk"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-activatepurnavlnk")), __method__)
	end

  # Returns the PowerUp Rewards link in the header for an activated PUR user
  def pur_dashboard_link
    # unit_test_no_generate: pur_dashboard_link, a.className(create_ats_regex_string("ats-purdashboardnavlnk"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-purdashboardnavlnk")), __method__)
  end

  # Returns the logout link in the header (same ats class name as the logout_link for GS header - diff name for duplicate finder)
  def profile_logout_link
    # unit_test_no_generate: profile_logout_link, a.className(create_ats_regex_string("ats-logout"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-logout")), __method__)
  end

  # TODO TEMPORARY FINDER - FROM game_stop_header_footer_finder file
  # Return the "Log In / Register" link.
  def profile_log_in_link()
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-login")), __method__)
  end


  #New header only 12-3-2012
  def profile_account_name
    $tracer.trace(__method__)
    #return ToolTag.new(span.id("/lblFirstName$/"), __method__, self)
    return ToolTag.new(span.className(create_ats_regex_string("accountname")), __method__, self)
  end


  # Returns "My Account" link.
  def profile_my_account_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-myaccount")), __method__)
  end
end
