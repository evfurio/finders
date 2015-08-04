# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to the checkout process.
#
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseCheckoutFinder

	# Returns the 'Billing Information' label.
  def billing_information_label
    $tracer.trace(__method__)
    # unit_test_no_generate: billing_information_label, h1.className(create_ats_regex_string("ats-billing-information-label"))
    return ToolTag.new(h1.className(create_ats_regex_string("ats-billing-information-label")), __method__, self)
  end

	# Returns the 'Checkout: Payment Information' label.
	def checkout_payment_information_label
    $tracer.trace(__method__)
    # unit_test_no_generate: checkout_payment_information_label, h1.className(create_ats_regex_string("ats-checkout-payment-information-label"))
    return ToolTag.new(h1.className(create_ats_regex_string("ats-checkout-payment-information-label")), __method__, self)
  end

	# Returns the 'Checkout : Review & Submit' label.
  def checkout_review_and_submit_label
    $tracer.trace(__method__)
    # unit_test_no_generate: checkout_review_and_submit_label, h1.className(create_ats_regex_string("ats-checkout-review-and-submit-label"))
    return ToolTag.new(h1.className(create_ats_regex_string("ats-checkout-review-and-submit-label")), __method__, self)
  end

	# Returns the 'Order Status: Processing' label.
  def order_status_processing_label
    $tracer.trace(__method__)
    # unit_test_no_generate: order_status_processing_label, h1.className(create_ats_regex_string("ats-notice-label"))
    return ToolTag.new(h1.className(create_ats_regex_string("ats-notice-label")), __method__, self)
  end

	# Returns the checkout button.
  def checkout_button
    # unit_test_no_generate: checkout_button, input.className(create_ats_regex_string("ats-checkout-button"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-checkout-button")), __method__, self)
  end

	# Returns the credit card selector.
  def credit_card_selector
    $tracer.trace(__method__)
    # unit_test_no_generate: credit_card_selector, get_self.select.className(create_ats_regex_string("ats-credit-card-selector")); ImpulseSelector
    tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-credit-card-selector")), __method__, self)
    return ImpulseSelector.new(tag, self)
  end

	# Returns the credit cart number field.
  def credit_card_number_field
    $tracer.trace(__method__)
    # unit_test_no_generate: credit_card_number_field, input.className(create_ats_regex_string("ats-credit-card-number-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-credit-card-number-field")), __method__, self)
  end

  # Returns the card holder name field.
  def credit_card_holder_name_field
    $tracer.trace(__method__)
    # unit_test_no_generate: credit_card_holder_name_field, input.className(create_ats_regex_string("ats-credit-card-holder-name-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-credit-card-holder-name-field")), __method__, self)
  end

  # Returns the credit card month selector.
  def credit_card_month_selector
    $tracer.trace(__method__)
    tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-credit-card-month-selector")), __method__, self)
    # unit_test_no_generate: credit_card_month_selector, get_self.select.className(create_ats_regex_string("ats-credit-card-month-selector")); ImpulseSelector
    return ImpulseSelector.new(tag, self)
  end

  # Returns the credit cart year selector.
  def credit_card_year_selector
    $tracer.trace(__method__)
    # unit_test_no_generate: credit_card_year_selector, get_self.select.className(create_ats_regex_string("ats-credit-card-year-selector")); ImpulseSelector
		tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-credit-card-year-selector")), __method__, self)
    return ImpulseSelector.new(tag, self)
  end

  # Returns the credit card security code field.
  def credit_card_security_code_field
    $tracer.trace(__method__)
    # unit_test_no_generate: credit_card_security_code_field, input.className(create_ats_regex_string("ats-credit-card-security-code-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-credit-card-security-code-field")), __method__, self)
  end

	# Returns the continue button.
  def continue_button
		# unit_test_no_generate: continue_button, jquery("a[class~='ats-continue-button'], input[class~='ats-continue-button']")
    $tracer.trace(__method__)
    return ToolTag.new(jquery("a[class~='ats-continue-button'], input[class~='ats-continue-button']"), __method__, self)
  end

	# Returns the submit order button.
  def submit_order_button
    $tracer.trace(__method__)
    # unit_test_no_generate: submit_order_button, input.className(create_ats_regex_string("ats-submit-order-button"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-submit-order-button")), __method__, self)
  end

	# Returns the link to the order number.
  def order_number_link
    $tracer.trace(__method__)
    # unit_test_no_generate: order_number_link, a.className(create_ats_regex_string("ats-order-number-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-order-number-link")), __method__, self)
  end

	# Returns the apply coupon button (cart).
  def apply_coupon_button
    # unit_test_no_generate: apply_coupon_button, input.className(create_ats_regex_string("ats-coupon-code-apply-button"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-coupon-code-apply-button")), __method__, self)
  end

	# Returns the coupon field.
  def coupon_field
    $tracer.trace(__method__)
    # unit_test_no_generate: coupon_field, input.className(create_ats_regex_string("ats-coupon-code-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-coupon-code-field")), __method__, self)
  end

	# Returns the continue shopping button.
  def continue_shopping_button
    $tracer.trace(__method__)
    # unit_test_no_generate: continue_shopping_button, input.className(create_ats_regex_string("ats-continue-shopping-button"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-continue-shopping-button")), __method__, self)
  end

	# Returns the payment method buttons.
  def payment_method_buttons
    $tracer.trace(__method__)
    # unit_test_no_generate: payment_method_buttons, div.className(create_ats_regex_string("ats-payment-method-buttons")); ImpulseRadioButtons
    return ImpulseRadioButtons.new(ToolTag.new(div.className(create_ats_regex_string("ats-payment-method-buttons")), __method__, self), self)
  end

	# Returns the first name field.
  def first_name_field
    $tracer.trace(__method__)
    # unit_test_no_generate: first_name_field, input.className(create_ats_regex_string("ats-first-name-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-first-name-field")), __method__, self)
  end

	# Returns the last name field.
  def last_name_field
    $tracer.trace(__method__)
    # unit_test_no_generate: last_name_field, input.className(create_ats_regex_string("ats-last-name-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-last-name-field")), __method__, self)
  end

	# Returns the streed address field.
  def street_address_field
    $tracer.trace(__method__)
    # unit_test_no_generate: street_address_field, input.className(create_ats_regex_string("ats-street-address-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-street-address-field")), __method__, self)
  end

	# Returns the city field.
  def city_field
    $tracer.trace(__method__)
    # unit_test_no_generate: city_field, input.className(create_ats_regex_string("ats-city-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-city-field")), __method__, self)
  end

	# Returns the state selector.
  def state_selector
    $tracer.trace(__method__)
    # unit_test_no_generate: state_selector, get_self.select.className(create_ats_regex_string("ats-state-selector")); ImpulseSelector
    tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-state-selector")), __method__, self)
    return ImpulseSelector.new(tag, self)
  end

	# Returns the zip code field.
  def zip_code_field
    $tracer.trace(__method__)
    # unit_test_no_generate: zip_code_field, input.className(create_ats_regex_string("ats-zip-code-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-zip-code-field")), __method__, self)
  end

  # Returns the phone field.
  def phone_number_field
    $tracer.trace(__method__)
    # unit_test_no_generate: phone_number_field, input.className(create_ats_regex_string("ats-phone-number-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-phone-number-field")), __method__, self)
  end

	# Returns the country selector.
  def country_selector
    $tracer.trace(__method__)
    tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-country-selector")), __method__, self)
    # unit_test_no_generate: country_selector, get_self.select.className(create_ats_regex_string("ats-country-selector")); ImpulseSelector
    return ImpulseSelector.new(tag, self)
  end

	# Returns the gamestop pc downloads eula label.
  def gamestop_pc_downloads_eula_label
    # unit_test_no_generate: gamestop_pc_downloads_eula_label, h1.className(create_ats_regex_string("ats-gamestop-pc-downloads-eula-label"))
    $tracer.trace(__method__)
    return ToolTag.new(h1.className(create_ats_regex_string("ats-gamestop-pc-downloads-eula-label")), __method__, self)
  end

	# Returns the gamestop support sales faq label.
  def gamestop_support_sales_faq_label
    # unit_test_no_generate: gamestop_support_sales_faq_label, h1.className(create_ats_regex_string("ats-gamestop-support-sales-faq-label"))
    $tracer.trace(__method__)
    return ToolTag.new(h1.className(create_ats_regex_string("ats-gamestop-support-sales-faq-label")), __method__, self)
  end

	# Returns the gamestop pc downloads privacy policy label.
  def gamestop_pc_downloads_privacy_policy_label
    # unit_test_no_generate: gamestop_pc_downloads_privacy_policy_label, h1.className(create_ats_regex_string("ats-gamestop-pc-downloads-privacy-policy-label"))
    $tracer.trace(__method__)
    return ToolTag.new(h1.className(create_ats_regex_string("ats-gamestop-pc-downloads-privacy-policy-label")), __method__, self)
  end

	# Returns the gamestop pc downloads return policy label.
  def gamestop_pc_downloads_return_policy_label
    # unit_test_no_generate: gamestop_pc_downloads_return_policy_label, h1.className(create_ats_regex_string("ats-gamestop-pc-downloads-return-policy-label"))
    $tracer.trace(__method__)
    return ToolTag.new(h1.className(create_ats_regex_string("ats-gamestop-pc-downloads-return-policy-label")), __method__, self)
  end

  # Returns the gamestop pc downloads terms of service label.
  def gamestop_pc_downloads_terms_of_service_label
    # unit_test_no_generate: gamestop_pc_downloads_terms_of_service_label, h1.className(create_ats_regex_string("ats-gamestop-pc-downlods-terms-of-service-label"))
    $tracer.trace(__method__)
    return ToolTag.new(h1.className(create_ats_regex_string("ats-gamestop-pc-downlods-terms-of-service-label")), __method__, self)
  end

	# Returns the month selector.
  def month_selector
    #unit_test_no_generate: month_selector, get_self.select.className(create_ats_regex_string("ats-month-selector")); ImpulseSelector
    $tracer.trace(__method__)
		tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-month-selector")), __method__, self)
    return ImpulseSelector.new(tag, self)
  end

	# Returns the year selector.
  def year_selector
    #unit_test_no_generate: year_selector, get_self.select.className(create_ats_regex_string("ats-year-selector")); ImpulseSelector
    $tracer.trace(__method__)
		tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-year-selector")), __method__, self)
    return ImpulseSelector.new(tag, self)
  end

	# Returns the company field
  def company_field
    $tracer.trace(__method__)
    # unit_test_no_generate: company_field, input.className(create_ats_regex_string("ats-company-field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-company-field")), __method__, self)
  end

  # Returns the button for purchasing as a gift.
  def purchase_as_gift_button
    $tracer.trace(__method__)
    # unit_test_no_generate: purchase_as_gift_button, input.className(create_ats_regex_string("ats-purchase-as-gift-button"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-purchase-as-gift-button")), __method__, self)
  end

  # Returns the submit button.
  def submit_button
    $tracer.trace(__method__)
    # unit_test_no_generate: submit_button, jquery("input[id*='Submit'], input[class~='ats-submit-button']")
    return ToolTag.new(jquery("input[id*='Submit'], input[class~='ats-submit-button']"), __method__, self)
  end

  # Returns the "item already registered panel"
  def item_already_registered_panel
    $tracer.trace(__method__)
    tag = ToolTag.new(div.id("cboxWrapper"), __method__, self)
    # unit_test_no_generate: item_already_registered_panel, div.id("cboxWrapper"); ImpulseItemAlreadyRegisteredPanel
    return ImpulseItemAlreadyRegisteredPanel.new(tag, self)
  end

  # Returns the "Age Verification" label.
  def age_verification_label
    # unit_test_no_generate: age_verification_label, h1.className(create_ats_regex_string("ats-age-verification-label"))
    $tracer.trace(__method__)
    return ToolTag.new(h1.className(create_ats_regex_string("ats-age-verification-label")), __method__, self)
  end

  # Returns the day selector.
  def day_selector
    #unit_test_no_generate: month_selector, get_self.select.className(create_ats_regex_string("ats-day-selector")); ImpulseSelector
    $tracer.trace(__method__)
    return ImpulseSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-day-selector")), __method__, self), self)
  end

end
