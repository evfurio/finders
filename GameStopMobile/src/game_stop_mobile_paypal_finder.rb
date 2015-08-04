
# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

Object.send(:remove_const, :GameStopMobilePaypalFinder) if Object.const_defined?(:GameStopMobilePaypalFinder)

module GameStopMobilePaypalFinder
	
	#Paypal Checkout button in Cart
	def paypal_chkout_button
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-paypalcheckoutbtn")), __method__)
	end
	
	# Returns "Test Acct Login" field 
	def paypal_test_acct_login_field
		$tracer.trace(__method__)
		# return ToolTag.new(input.id("login_email"), __method__, self)
    return ToolTag.new(div.className("/emailField/").input, __method__, self)
	end

	# Returns "Test Acct Password" field 
	def paypal_test_acct_password_field
		$tracer.trace(__method__)
		# return ToolTag.new(input.id("login_password"), __method__, self)
    return ToolTag.new(div.className("/passwordField/").input, __method__, self)
	end

	# Returns "Test Acct Login" button 
	def paypal_test_acct_login_button
		$tracer.trace(__method__)
		# return ToolTag.new(input.id("submitLogin"), __method__, self)
    return ToolTag.new(input.className("/loginBtn/"), __method__, self)
	end
	
	# Returns "Test Acct Continue" button 
	def paypal_test_acct_continue_button
		$tracer.trace(__method__)
		# return ToolTag.new(input.id("continue"), __method__, self)
    return ToolTag.new(input.className("/continueButton/"), __method__, self)
	end
	
	# Returns the "Continue To PayPal" button.
  def paypal_continue_button
    $tracer.trace(__method__)
    return ToolTag.new(button("Continue To PayPal"), __method__, self)
  end
	
	# Returns Paypal radio button
  def paypal_payment_option
    $tracer.trace(__method__)
    return ToolTag.new(section.id("payment_options").find.p.id("/paypalselected/"), __method__, self)
  end
	
end

