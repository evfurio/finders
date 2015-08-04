# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to the cart.
# 
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseCartFinder

  # Returns the email address in the "header" of the cart.
  def header_email_address_label
    # unit_test_no_generate: header_email_address_label, span.className(create_ats_regex_string("ats-header-email-address-panel"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-header-email-address-panel")), __method__, self)
  end

  # Returns the empty cart label.
  def empty_cart_label
    # unit_test_no_generate: empty_cart_label, p.className(create_ats_regex_string("ats-empty-cart-label"))
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-empty-cart-label")), __method__, self)
  end

  # Returns the "my cart" label.
  def my_cart_label
    # unit_test_no_generate: my_cart_label, span.className(create_ats_regex_string("ats-my-cart-label"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-my-cart-label")), __method__, self)
  end

	# Returns the cart list.
	def cart_list
		$tracer.trace(__method__)
		# unit_test: cart_list, table.className(create_ats_regex_string("ats-cart-list")).find.tbody.find.tr; ImpulseCartList
		return ImpulseCartList.new(ToolTag.new(table.className(create_ats_regex_string("ats-cart-list")).find.tbody.find.tr, __method__, self), self)
	end

  # Returns the cart link.
  def cart_link
    $tracer.trace(__method__)
    # unit_test_no_generate: cart_link, a.className("viewcart")
    return ToolTag.new(a.className("viewcart"), __method__, self)
  end

  # Returns the IP address field. NOTE: this is only present in QA.
  def ip_address_field
    # unit_test_no_generate: ip_address_field, input.className(create_ats_regex_string("ats-ip-address-field"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-ip-address-field")), __method__, self)
  end

  # Returns the My Account link (cart).
  def cart_my_account_link
    # unit_test_no_generate: cart_my_account_link, a.className(create_ats_regex_string("ats-my-account-link"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-my-account-link")), __method__, self)
  end

  # Returns the Gift Card Card Number field (cart - Payment Method).
  def store_gift_card_number_field
    # unit_test_no_generate: store_gift_card_number_field, input.className(create_ats_regex_string("ats-store-gift-card-number-field"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-store-gift-card-number-field")), __method__, self)
  end

  # Returns the Gift Card PIN field (cart - Payment Method).
  def store_gift_card_pin_field
    # unit_test_no_generate: store_gift_card_pin_field, input.className(create_ats_regex_string("ats-store-gift-card-pin-field"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-store-gift-card-pin-field")), __method__, self)
  end

  # Returns the Apply Gift Card button (cart - Payment Method).
  def store_apply_gift_card_button
    # unit_test_no_generate: store_apply_gift_card_button, img.className(create_ats_regex_string("ats-store-apply-gift-card-button"))
    $tracer.trace(__method__)
    return ToolTag.new(img.className(create_ats_regex_string("ats-store-apply-gift-card-button")), __method__, self)
  end

  # Returns the PUR field on the cart (cart).
  def cart_pur_number_field
    # unit_test_no_generate: cart_pur_number_field, input.className(create_ats_regex_string("ats-pur-number-field"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-pur-number-field")), __method__, self)
  end

  # Returns the cart PUR Saved confirmation label (cart)
  def cart_pur_saved_label
    # unit_test_no_generate: cart_pur_saved_label, span.className(create_ats_regex_string("ats-pur-successful-save-panel"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-pur-successful-save-panel")), __method__, self)
  end

  # Returns the PUR label on the cart (appears if a loyalty number
  # has already been entered). (cart).
  def cart_pur_number_label
    # unit_test_no_generate: cart_pur_number_label, span.className(create_ats_regex_string("ats-pur-saved-number-label"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-pur-saved-number-label")), __method__, self)
  end

  # Returns the logout link (cart)
  def cart_logout_link
    # unit_test_no_generate: cart_logout_link, a.className(create_ats_regex_string("ats-logout-link"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-logout-link")), __method__, self)
  end

  # Returns the Remove Coupon link (cart)
  def cart_remove_coupon_link
    # unit_test_no_generate: cart_remove_coupon_link, a.className(create_ats_regex_string("ats-coupon-discounts-remove-link"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-coupon-discounts-remove-link")), __method__, self)
  end

    # Returns a coupon minimum required error message(cart).
    def coupon_minimum_required_label
        # unit_test_no_generate: coupon_minimum_required_label, div.className(create_ats_regex_string("ats-coupon-minimum-required-label"))
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-coupon-minimum-required-label")),__method__, self)
    end

  # Returns the cart total panel (cart).
  def cart_total_panel
    $tracer.trace(__method__)
    # unit_test_no_generate: cart_total_panel, table.className("/cart/").find.tfoot.find.td; ImpulseCartTotalPanel
    tt = ToolTag.new(table.className("/cart/").find.tfoot.find.td, __method__, self)
    return ImpulseCartTotalPanel.new(tt, self);
  end

    # Returns an order details button (cart).
    def order_details_button
        # unit_test_no_generate: order_details_button, a.className(create_ats_regex_string("ats-order-details-button"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-order-details-button")),__method__, self)
    end
	
end
