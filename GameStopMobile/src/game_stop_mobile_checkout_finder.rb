# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

module GameStopMobileCheckoutFinder
  # Returns the "Continue Secure Checkout" button.
  def continue_secure_checkout_button
    $tracer.trace(__method__)
    #unit_test_no_generate: continue_secure_checkout_button, div.with.className("/secure_checkout/").find.button
    return ToolTag.new(div.with.className("/secure_checkout/").find.button, __method__, self)
  end

  # Returns the "Continue Checkout" button.
  def continue_checkout_button
    $tracer.trace(__method__)
    #unit_test_no_generate: continue_checkout_button, button("/Continue Checkout/")
    return ToolTag.new(button("/Continue Checkout/"), __method__, self)
  end

  # Returns the "Complete Checkout" button.
  def complete_checkout_button
    $tracer.trace(__method__)
    #unit_test_no_generate: complete_checkout_button, button("Complete Checkout")
    return ToolTag.new(button("Complete Checkout"), __method__, self)
  end

  # Returns the "I am 17 years of age or older" button from the age gate.
  def seventeen_or_older_button
    $tracer.trace(__method__)
    #unit_test_no_generate: seventeen_or_older_button, button.id("over_17")
    return ToolTag.new(button.id("over_17"), __method__, self)
  end

  # Returns the "Check Out as a Guest" button.
  def buy_as_guest_button
    $tracer.trace(__method__)
    #unit_test_no_generate: buy_as_guest_button, li.id("guest_checkout_link").find.button
    return ToolTag.new(li.id("guest_checkout_link").find.button, __method__, self)
  end

  # Returns the "How Do You Want To Checkout" label.
  def checkout_type_label
    $tracer.trace(__method__)
    #unit_test_no_generate: checkout_type_label, section.id("checkout_type").find.h3
    return ToolTag.new(section.id("checkout_type").find.h3, __method__, self)
  end

  # Returns the "Shipping Address" label.
  def shipping_address_label
    $tracer.trace(__method__)
    #unit_test_no_generate: shipping_address_label, div.id("shipping_address_form").parent("section").find.h3
    return ToolTag.new(div.id("shipping_address_form").parent("section").find.h3, __method__, self)
  end

  # Returns the "Billing Address" label.
  def billing_address_label
    $tracer.trace(__method__)
    #unit_test_no_generate: billing_address_label, div.id("billing_address_form").parent("section").find.h3
    return ToolTag.new(div.id("billing_address_form").parent("section").find.h3, __method__, self)
  end

  # Returns "My billing and shipping address are the same" checkbox.
  def same_address_checkbox
    $tracer.trace(__method__)
    #unit_test_no_generate: same_address_checkbox, input.id("BillingSame").type('checkbox')
    return ToolTag.new(input.id("BillingSame").type('checkbox'), __method__, self)
  end

  # Returns the "Handling Options" label.
  def handling_options_label
    $tracer.trace(__method__)
    #unit_test_no_generate: handling_options_label, section.id("handling_options").find.h3
    return ToolTag.new(section.id("handling_options").find.h3, __method__, self)
  end

  # Returns the "Shipping & Handling Method" radio button table.
  def handling_method_buttons
    $tracer.trace(__method__)
    #unit_test_no_generate: handling_method_buttons, table.id("standard_handling_method_select").find.tbody; GameStopMobileHandlingMethodRadioButtons
    return GameStopMobileHandlingMethodRadioButtons.new(ToolTag.new(table.id("standard_handling_method_select").find.tbody, __method__, self), self)
  end

  # Returns the gift message field.
  def gift_message_field
    $tracer.trace(__method__)
    #unit_test_no_generate: gift_message_field, textarea.id("/shoppingCartShipGroups/")
    return ToolTag.new(textarea.id("/shoppingCartShipGroups/"), __method__, self)
  end

  # Returns the order confirmation label.
  def order_confirmation_label
    $tracer.trace(__method__)
    #unit_test_no_generate: order_confirmation_label, section.className("order_confirm_text")
    return ToolTag.new(section.className("order_confirm_text"), __method__, self)
  end

  # Returns the order confirmation number label.
  def order_confirmation_number_label
    $tracer.trace(__method__)
    #unit_test_no_generate: order_confirmation_number_label, section.className("order_confirm_text").strong
    return ToolTag.new(section.className("order_confirm_text").strong, __method__, self)
  end

end

