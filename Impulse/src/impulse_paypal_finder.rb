# This file contains the module for the Impulse PayPal finders.
#
# Author:: Paul Grizzaffi, Jon Lafortune, Chelsea Lovas
# Copyright:: Copyright (c) 2012 GameStop, Inc.
# Not for external distribution.

# == Overview
# This module is used to find PayPal-related elements.
module ImpulsePayPalFinder

  # Returns "Personal" tab on sandbox.paypal.com
  def paypal_personal_tab
		# unit_test_no_generate: paypal_personal_tab, a.className("scTrack:SRD:Nav:L8")
    $tracer.trace(__method__)
    return ToolTag.new(a.className("scTrack:SRD:Nav:L8"), __method__, self)
  end

  # Returns "Logout" link on sandbox.paypal.com
  def paypal_logout_link
		# unit_test_no_generate: paypal_logout_link, a.href("/logout/")
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/logout/"), __method__, self)
  end

  # Returns "Master Login" link on sandbox.paypal.com
  def paypal_master_login_link
		# unit_test_no_generate: paypal_master_login_link, a.innerText("PayPal Sandbox")
    $tracer.trace(__method__)
    return ToolTag.new(a.innerText("PayPal Sandbox"), __method__, self)
  end

  # Returns "Master Email" field on sandbox.paypal.com
  def paypal_master_email_field
		# unit_test_no_generate: paypal_master_email_field, input.id("login_email")
    $tracer.trace(__method__)
    return ToolTag.new(input.id("login_email"), __method__, self)
  end

  # Returns "Master Password" field on sandbox.paypal.com
  def paypal_master_password_field
		# unit_test_no_generate: paypal_master_password_field, input.id("login_password")
    $tracer.trace(__method__)
    return ToolTag.new(input.id("login_password"), __method__, self)
  end

  # Returns "Master Login" button on sandbox.paypal.com
  def paypal_master_login_button
		# unit_test_no_generate: paypal_master_login_button, input.className("formBtnOrange")
    $tracer.trace(__method__)
    return ToolTag.new(input.className("formBtnOrange"), __method__, self)
  end

  # Returns "Test Acct Login" field on sandbox.paypal.com
  def paypal_test_acct_login_field
		# unit_test_no_generate: paypal_test_acct_login_field, input.id("login_email")
    $tracer.trace(__method__)
    return ToolTag.new(input.id("login_email"), __method__, self)
  end

  # Returns "Test Acct Password" field on sandbox.paypal.com
  def paypal_test_acct_password_field
		# unit_test_no_generate: paypal_test_acct_password_field, input.id("login_password")
    $tracer.trace(__method__)
    return ToolTag.new(input.id("login_password"), __method__, self)
  end

  # Returns "Test Acct Login" button on sandbox.paypal.com
  def paypal_test_acct_login_button
		# unit_test_no_generate: paypal_test_acct_login_button, input.id("submitLogin")
    $tracer.trace(__method__)
    return ToolTag.new(input.id("submitLogin"), __method__, self)
  end

  # Returns "Shipping Address" panel on sandbox.paypal.com
  def paypal_shipping_address_panel
		# unit_test_no_generate: paypal_shipping_address_panel, h4("Shipping address")
    $tracer.trace(__method__)
    return ToolTag.new(h4("Shipping address"), __method__, self)
  end

  # Returns "Test Acct Continue" button on sandbox.paypal.com
  def paypal_test_acct_continue_button
		# unit_test_no_generate: paypal_test_acct_continue_button, input.id("continue")
    $tracer.trace(__method__)
    return ToolTag.new(input.id("continue"), __method__, self)
  end

	def paypal_policy_consent_checkbox
		# unit_test_no_generate: paypal_policy_consent_checkbox, input.id(create_ats_regex_string("esignOpt"))
		$tracer.trace(__method__)

		return ToolTag.new(input.id(create_ats_regex_string("esignOpt")), __method__, self)
	end

	def paypal_agree_button
		# unit_test_no_generate: paypal_agree_button, input.id(create_ats_regex_string("agree"))
		$tracer.trace(__method__)

		return ToolTag.new(input.id(create_ats_regex_string("agree")), __method__, self)
	end
end