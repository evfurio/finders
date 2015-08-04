# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

Object.send(:remove_const, :GameStopMobileCheckoutNewFinder) if Object.const_defined?(:GameStopMobileCheckoutNewFinder)

module GameStopMobileCheckoutNewFinder

  # Returns the "Continue Secure Checkout" button.
  def continue_secure_checkout_button
    $tracer.trace(__method__)
    #unit_test_no_generate: continue_secure_checkout_button, div.with.className("/secure_checkout/").find.button
    return ToolTag.new(div.with.className("/secure_checkout/").find.button, __method__, self)
  end

  # Returns Promotion Code Label.
  def promotion_code_field
    $tracer.trace(__method__)
    #unit_test_no_generate: promotion_code_field, input.className(create_ats_regex_string("ats-promocode"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-promocode")), __method__, self)
  end

  # Returns Promotion Code Apply Button.
  def promotion_code_apply_button
    $tracer.trace(__method__)
    #unit_test_no_generate: promotion_code_apply_button, button.className(create_ats_regex_string("ats-promoapplybtn"))
    return ToolTag.new(button.className(create_ats_regex_string("ats-promoapplybtn")), __method__, self)
  end

  # Returns the "Check Out as a Guest" button.
  def buy_as_guest_button
    $tracer.trace(__method__)
    #unit_test_no_generate: buy_as_guest_button, li.id("guest_checkout_link").find.button
    return ToolTag.new(li.id("guest_checkout_link").find.button, __method__, self)
  end

  # Returns the "Log Into My Account" button.
  def buy_as_login_button
    $tracer.trace(__method__)
    #unit_test_no_generate: buy_as_login_button, button.className(create_ats_regex_string("ats-buyasaccount"))
    return ToolTag.new(button.className(create_ats_regex_string("ats-buyasaccount")), __method__, self)
  end

  # Returns the "Create a New Account" button.
  def buy_as_new_account_button
    $tracer.trace(__method__)
    return ToolTag.new(li.id('new_account_link').find.button, __method__, self)
  end

  # Returns New Login Email Label.
  def new_login_email_field
    $tracer.trace(__method__)
    #unit_test_no_generate: new_login_email_field, input.className(create_ats_regex_string("ats-createemailaddr"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-createemailaddr")), __method__, self)
  end

  # Returns New Login Confirm Email Label.
  def new_login_conf_email_field
    $tracer.trace(__method__)
    #unit_test_no_generate: new_login_conf_email_field, input.className(create_ats_regex_string("ats-confirmemailaddrfield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-confirmemailaddrfield")), __method__, self)
  end

  # Returns New Login Password Label.
  def new_login_password_field
    $tracer.trace(__method__)
    #unit_test_no_generate: new_login_password_field, input.className(create_ats_regex_string("ats-createpwdfield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-createpwdfield")), __method__, self)
  end

  # Returns New Confirm Login Password Label.
  def new_login_conf_password_field
    $tracer.trace(__method__)
    #unit_test_no_generate: new_login_conf_password_field, input.className(create_ats_regex_string("ats-confirmpwdfield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-confirmpwdfield")), __method__, self)
  end

  # Returns Login Email Label.
  def login_email_field
    $tracer.trace(__method__)
    #unit_test_no_generate: login_email_field, input.className(create_ats_regex_string("ats-emailaddrfield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-emailaddrfield")), __method__, self)
  end

  # Returns Login Password Label.
  def login_password_field
    $tracer.trace(__method__)
    #unit_test_no_generate: login_password_field, input.className(create_ats_regex_string("ats-pwdfield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-pwdfield")), __method__, self)
  end

  # Returns the "SignUp" button.
  def user_signup_button
    $tracer.trace(__method__)
    #unit_test_no_generate: user_signup_button, button.className(create_ats_regex_string("ats-createacctbtn"))
    return ToolTag.new(button.className(create_ats_regex_string("ats-createacctbtn")), __method__, self)
  end

  # Returns the "LogIn" button.
  def user_login_button
    $tracer.trace(__method__)
    #unit_test_no_generate: user_login_button, button.className(create_ats_regex_string("ats-loginbtn"))
    return ToolTag.new(button.className(create_ats_regex_string("ats-loginbtn")), __method__, self)
  end

  # Returns the " I Forgot My Password" Link
  def chkout_forgot_password_link
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_forgot_password_link, a.className(create_ats_regex_string("ats-forgotpwdlnk"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-forgotpwdlnk")), __method__, self)
  end

  # Returns the Forgot Password Email Field.
  def chkout_forgot_password_email_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_forgot_password_email_field, input.id("EmailAddress")
    return ToolTag.new(input.id("EmailAddress"), __method__, self)
  end

  # Returns the "I am 17 years of age or older" button from the age gate.
  def seventeen_or_older_button
    $tracer.trace(__method__)
    #unit_test_no_generate: seventeen_or_older_button, button.id("over_17")
    return ToolTag.new(button.id("over_17"), __method__, self)
		#return ToolTag.new(button.className("ats-ofagebtn"), __method__, self)
  end

  # Store pick up link.
  def store_pickup_link
    $tracer.trace(__method__)
    #unit_test_no_generate: store_pickup_link, span.className("ship_off")
    return ToolTag.new(span.className("ship_off"), __method__, self)
  end

  # Returns Store PickUp Zipcode Label
  def store_pickup_zipcode_field
    $tracer.trace(__method__)
    #unit_test_no_generate: store_pickup_zipcode_field, input.className(create_ats_regex_string("ats-InStorePickupZipcode"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-InStorePickupZipcode")), __method__, self)
  end

  # Returns Store pickup Search Button
  def store_pickup_search_button
    $tracer.trace(__method__)
    #unit_test_no_generate: store_pickup_search_button, button.className(create_ats_regex_string("alternate_button"))
    return ToolTag.new(button.className(create_ats_regex_string("alternate_button")), __method__, self)
  end

  # Returns "PowerUp Rewards" field.
  def powerup_reward_field
    $tracer.trace(__method__)
    #unit_test_no_generate: powerup_reward_field, input.className(create_ats_regex_string("ats-purnumber"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-purnumber")), __method__, self)
  end

  #Returns PowerUp Rewards Confirm field.
  def powerup_reward_confirm_label
    $tracer.trace(__method__)
    #unit_test_no_generate: powerup_reward_confirm_label, div.id("pur_applied")
    return ToolTag.new(div.id("pur_applied"), __method__, self)
  end

  # Returns the "Country" label Checkout
  def chkout_country_selector
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_country_selector, get_self.select.className(create_ats_regex_string("ats-countryfield")); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-countryfield")), __method__, self), self)
  end

  # Returns the "First Name" label Checkout
  def chkout_first_name_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_first_name_field, input.className(create_ats_regex_string("ats-fnamefield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-fnamefield")), __method__, self)
  end

  # Returns the "Last Name" label Checkout
  def chkout_last_name_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_last_name_field, input.className(create_ats_regex_string("ats-lnamefield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-lnamefield")), __method__, self)
  end

  # Returns the Address1" label Checkout
  def chkout_address_1_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_address_1_field, input.className(create_ats_regex_string("ats-line1field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-line1field")), __method__, self)
  end

  # Returns the Address2" label Checkout
  def chkout_address_2_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_address_2_field, input.className(create_ats_regex_string("ats-line2field"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-line2field")), __method__, self)
  end

  # Returns the City" label Checkout
  def chkout_city_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_city_field, input.className(create_ats_regex_string("ats-cityfield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-cityfield")), __method__, self)
  end

  # Returns the "State" selector.
  def chkout_select_state
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_select_state, get_self.select.className(create_ats_regex_string("ats-usstate")); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-usstate")), __method__, self), self)
  end

  # Returns the Zip" label Checkout
  def chkout_zip_code_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_zip_code_field, input.className(create_ats_regex_string("ats-postalcodefield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-postalcodefield")), __method__, self)
  end

  # Returns the Phone Number" label Checkout
  def chkout_phone_number_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_phone_number_field, input.className(create_ats_regex_string("ats-phonefield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-phonefield")), __method__, self)
  end

  # Returns the Purchase Email label Checkout
  def chkout_email_address_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_email_address_field, input.className(create_ats_regex_string("ats-emailfield"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-emailfield")), __method__, self)
  end

  # Returns the Confirm Email label Checkout
  def chkout_confirm_email_address_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_confirm_email_address_field, input.id("/ShipTo_ConfirmEmailAddress/")
    return ToolTag.new(input.id("/ShipTo_ConfirmEmailAddress/"), __method__, self)
    #return ToolTag.new(input.className(create_ats_regex_string("ats-confirmemailfield")), __method__, self)
  end

  # Returns the Confirm Bill to Email label Checkout
  def chkout_billing_confirm_email_address_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_billing_confirm_email_address_field,  input.id("/BillTo_ConfirmEmailAddress/")
    return ToolTag.new(input.id("/BillTo_ConfirmEmailAddress/"), __method__, self)
    #return ToolTag.new(input.className(create_ats_regex_string("ats-confirmemailfield")), __method__, self)
  end

  # Returns the checkbox for specifying a different or same billing and
  # and shipping address.
  def chkout_same_address_checkbox
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_same_address_checkbox, input.className(create_ats_regex_string("ats-sameaddressoptinbox"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-sameaddressoptinbox")), __method__, self)
  end

  # Returns the "Continue Secure Checkout" button.
  def chkout_continue_checkout_button
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_continue_checkout_button, button("/Continue Checkout/")
    return ToolTag.new(button("/Continue Checkout/"), __method__, self)
  end

  # Returns "Continue CheckOut" on handling page
  def continue_checkout_button_handling
    $tracer.trace(__method__)
    #unit_test_no_generate: continue_checkout_button_handling, button.className(create_ats_regex_string("ats-checkoutbtn"))
    return ToolTag.new(button.className(create_ats_regex_string("ats-checkoutbtn")), __method__, self)
  end

  # Returns the "Handling Options" label.
  def chkout_handling_options_label
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_handling_options_label, section.id("handling_options").find.h3
    return ToolTag.new(section.id("handling_options").find.h3, __method__, self)
  end

  # Returns the "Shipping & Handling Method" radio button table.
  def chkout_handling_method_buttons
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_handling_method_buttons, table.id("standard_handling_method_select").find.tbody; GameStopMobileHandlingMethodRadioButtons
    return GameStopMobileHandlingMethodRadioButtons.new(
        ToolTag.new(table.id("standard_handling_method_select").find.tbody, __method__, self), self)
  end

  # Returns the handling method radio button table.
  def handling_method_buttons
    $tracer.trace(__method__)
    #unit_test_no_generate: handling_method_buttons, div.className("/hmethod/"); GameStopCheckoutRadioButtons
    return GameStopCheckoutRadioButtons.new(ToolTag.new(div.className("/hmethod/"), __method__, self), self)
  end

  # Returns the credit card type selector.
  def chkout_credit_card_selector
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_credit_card_selector, get_self.select.className(create_ats_regex_string("ats-cardtype")); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-cardtype")), __method__, self), self)
  end

  # Returns the credit card number field.
  def chkout_credit_card_number_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_credit_card_number_field, input.className(create_ats_regex_string("ats-ccnumber"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-ccnumber")), __method__, self)
  end

  # Returns the credit card month selector.
  def chkout_credit_card_month_selector
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_credit_card_month_selector, get_self.select.className(create_ats_regex_string("ats-expmonth")); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-expmonth")), __method__, self), self)
  end

  # Returns the credit card year selector.
  def chkout_credit_card_year_selector
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_credit_card_year_selector, get_self.select.className(create_ats_regex_string("ats-expyear")); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-expyear")), __method__, self), self)
  end

  # Returns the security code number field.
  def chkout_security_code_number_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_security_code_number_field, input.className(create_ats_regex_string("ats-securitycode"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-securitycode")), __method__, self)
  end

  # Returns the "Complete Checkout" button.
  def chkout_complete_checkout_button
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_complete_checkout_button, button("Complete Checkout")
    return ToolTag.new(button("Complete Checkout"), __method__, self)
  end

  # Returns Gift Card field.
  def chkout_gift_card_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_gift_card_field, input.className(create_ats_regex_string("ats-giftcard"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-giftcard")), __method__, self)
  end

  # Returns Gift Card PIN field.
  def chkout_gift_card_pin_field
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_gift_card_pin_field, input.className(create_ats_regex_string("ats-giftpin"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-giftpin")), __method__, self)
  end

  # Returns Gift Card Apply Button.
  def gift_card_apply_button
    $tracer.trace(__method__)
    #unit_test_no_generate: gift_card_apply_button, button.className(create_ats_regex_string("ats-applygiftcardbtn"))
    return ToolTag.new(button.className(create_ats_regex_string("ats-applygiftcardbtn")), __method__, self)
  end

  # Returns the order confirmation label.
  def order_confirmation_label
    $tracer.trace(__method__)
    #unit_test_no_generate: order_confirmation_label, jquery("ats-orderconfirmlabel")
    return ToolTag.new(jquery(".ats-orderconfirmlabel"), __method__, self)
  end

  # Returns the order confirmation number label.
  def order_confirmation_number_label
    $tracer.trace(__method__)
    #unit_test_no_generate: order_confirmation_number_label, jquery("ats-orderconfirmnumber")
    return ToolTag.new(jquery(".ats-orderconfirmnumber"), __method__, self)
  end

  # Returns Gift Card Apply Button.
  def invalid_cc_label
    $tracer.trace(__method__)
    #unit_test_no_generate: invalid_cc_label, label.className(create_ats_regex_string("ats-creditcardinvalidmsg"))
    return ToolTag.new(label.className(create_ats_regex_string("ats-creditcardinvalidmsg")), __method__, self)
  end

  # Returns Gift Card Apply Button.
  def invalid_gc_label
    $tracer.trace(__method__)
    #unit_test_no_generate: invalid_gc_label, jquery("ats-gcinvalidmsg")
    return ToolTag.new(jquery(".ats-gcinvalidmsg"), __method__, self)
  end

  # Returns Select Store Pickup Radio
  def chkout_store_pickup_radio
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_store_pickup_radio, input.className(create_ats_regex_string("ats-storepickupradio"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-storepickupradio")), __method__, self)
  end

  # Returns Select Store Pickup Radio
  def chkout_store_pickup_number
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_store_pickup_number, input.className(create_ats_regex_string("ats-pickupphonenumber"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-pickupphonenumber")), __method__, self)
  end

  # Returns the edit Cart link.
  def edit_cart_link
    $tracer.trace(__method__)
    #unit_test_no_generate: edit_cart_link, a.className(create_ats_regex_string("ats-cartedit"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-cartedit")), __method__, self)
  end

  # Returns the remove link.
  def remove_item_link
    $tracer.trace(__method__)
    #unit_test_no_generate: remove_item_link, a.className(create_ats_regex_string("ats-remove"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-remove")), __method__, self)
  end

  # Returns line item label.
  def line_item_label
    $tracer.trace(__method__)
    #unit_test_no_generate: line_item_label, tr.className(create_ats_regex_string("ats-lineitemrow"))
    return ToolTag.new(tr.className(create_ats_regex_string("ats-lineitemrow")), __method__, self)
  end

  # Returns Quantity Update Label.
  def qty_update_field
    $tracer.trace(__method__)
    #unit_test_no_generate: qty_update_field, input.className(create_ats_regex_string("ats-qty"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-qty")), __method__, self)
  end

  # Returns Cart Edit Done link.
  def cart_edit_done_link
    $tracer.trace(__method__)
    #unit_test_no_generate: cart_edit_done_link, a.className(create_ats_regex_string("ats-cartupdate"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-cartupdate")), __method__, self)
  end

  # Returns "Your Shopping Cart is Empty" Label.
  def shopping_cart_empty_label
    $tracer.trace(__method__)
    #unit_test_no_generate: shopping_cart_empty_label, div.className(create_ats_regex_string("empty_cart"))
    return ToolTag.new(div.className(create_ats_regex_string("empty_cart")), __method__, self)
  end

  # Returns "Show Order Summary" Link.
  def show_order_summary_link
    $tracer.trace(__method__)
    #unit_test_no_generate: show_order_summary_link, h3.className(create_ats_regex_string("ats-showordersummary_link"))
    return ToolTag.new(h3.className(create_ats_regex_string("ats-showordersummary_link")).a, __method__, self)
  end

  # Returns Optional Gift Message checkbox.
  def gift_message_checkbox
    $tracer.trace(__method__)
    #unit_test_no_generate: gift_message_checkbox, input.className(create_ats_regex_string("ats-giftmsgcheckbox"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-giftmsgcheckbox")), __method__, self)
  end

  # Returns Optional Gift Message Field.
  def gift_message_field
    $tracer.trace(__method__)
    #unit_test_no_generate: gift_message_field, textarea.className(create_ats_regex_string("ats-giftmsgform"))
    return ToolTag.new(textarea.className(create_ats_regex_string("ats-giftmsgform")), __method__, self)
  end

  # Returns Shipping and Handling Label.
  def shipping_handling_option_label
    $tracer.trace(__method__)
    #unit_test_no_generate: shipping_handling_option_label, table.id("standard_handling_method_select")
    return ToolTag.new(table.id("standard_handling_method_select"), __method__, self)
  end

  # Returns Shipping and Handling Method Label.
  def shipping_handling_method_label
    $tracer.trace(__method__)
    #unit_test_no_generate: shipping_handling_method_label, input.className(create_ats_regex_string("ats-shippingmethods"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-shippingmethods")), __method__, self)
  end

  # Return "Log into My Account" button.
  def log_into_my_account_button
    $tracer.trace(__method__)
    #unit_test_no_generate: log_into_my_account_button, li.id("log_in_link").find.button
    return ToolTag.new(li.id("log_in_link").find.button, __method__, self)
  end

  # Returns "View Cart" "button".
  def view_cart_button
    $tracer.trace(__method__)
    #unit_test_no_generate: view_cart_button, li.id("nav_cart").find.a
    return ToolTag.new(li.id("nav_cart").find.a, __method__, self)
  end

  # Returns "info on in-store pick-up orders" Label.
  def instore_pickup_summary_label
    $tracer.trace(__method__)
    #unit_test_no_generate: instore_pickup_summary_label, div.className(create_ats_regex_string("pickup_method_summary"))
    return ToolTag.new(div.className(create_ats_regex_string("pickup_method_summary")), __method__, self)
  end

  # Returns "Gift message cannot exceed 50 characters" Label.
  def gift_messsage_error
    $tracer.trace(__method__)
    #unit_test_no_generate: gift_messsage_error, span.className(create_ats_regex_string("field-validation-error"))
    return ToolTag.new(span.className(create_ats_regex_string("field-validation-error")), __method__, self)
  end

  # Returns "Change Address" Link Payment Page .
  def change_address_payment_page_link
    $tracer.trace(__method__)
    #unit_test_no_generate: change_address_payment_page_link, a.className(create_ats_regex_string("ats-editbillingaddr"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-editbillingaddr")), __method__, self)
  end

  # Returns "Change Address" Link Handling Page .
  def change_address_handling_page_link
    $tracer.trace(__method__)
    #unit_test_no_generate: change_address_handling_page_link, a.className(create_ats_regex_string("ats-changeship"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-changeship")), __method__, self)
  end

  # Returns Existing Shipping Address Label.
  def chkout_select_existing_address
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_select_existing_address, section.id("selected_shipping_address").p
    return ToolTag.new(section.id("selected_shipping_address").p, __method__, self)
  end

  # Returns Existing Billing Address Label.
  def chkout_select_existing_billing_address
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_select_existing_billing_address, section.id("selected_billing_address").p
    return ToolTag.new(section.id("selected_billing_address").p, __method__, self)
  end

  # Returns "Change Address" Link.
  def chkout_modify_existing_address
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_modify_existing_address, a.id("change_address")
    return ToolTag.new(a.id("change_address"), __method__, self)
  end

  # Returns "Enter New Billing Address" Link.
  def chkout_enter_billing_address
    $tracer.trace(__method__)
    #unit_test_no_generate: chkout_enter_billing_address, a.id("enter_address")
    return ToolTag.new(a.id("enter_address"), __method__, self)
  end

  # Returns "PickUp@Store" Button.
  def store_pickup_hops
    $tracer.trace(__method__)
    #unit_test_no_generate: store_pickup_hops, td.className(create_ats_regex_string("store_pickup_action"))
    return ToolTag.new(td.className(create_ats_regex_string("store_pickup_action")), __method__, self)
  end

  # Returns "PickUp@Store" Button checkout.
  def store_pickup_hops_checkout
    $tracer.trace(__method__)
    #unit_test_no_generate: store_pickup_hops_checkout, button.className(create_ats_regex_string("ats-instorecartbutton"))
    return ToolTag.new(button.className(create_ats_regex_string("ats-instorecartbutton")), __method__, self)
  end

  # Returns the "First Name" field for HOPS.
  def first_name_hops_field
    $tracer.trace(__method__)
    #unit_test_no_generate: first_name_hops_field, input.className(create_ats_regex_string("ats-firstname"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-firstname")), __method__, self)
  end

  # Returns the "Last Name" field for HOPS.
  def last_name_hops_field
    $tracer.trace(__method__)
    #unit_test_no_generate: last_name_hops_field, input.className(create_ats_regex_string("ats-lastname"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-lastname")), __method__, self)
  end

  # Returns the "Purchaser's Email" field for HOPS.
  def email_address_hops_field
    $tracer.trace(__method__)
    #unit_test_no_generate: email_address_hops_field, input.className(create_ats_regex_string("ats-email"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-email")), __method__, self)
  end

  # Returns the "Confirm Email" field for HOPS.
  def confirm_email_address_hops_field
    $tracer.trace(__method__)
    #unit_test_no_generate: confirm_email_address_hops_field, input.className(create_ats_regex_string("ats-emailconfirm"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-emailconfirm")), __method__, self)
  end

  # Returns the "Phone Number" field for HOPS.
  def phone_number_hops_field
    $tracer.trace(__method__)
    #unit_test_no_generate: phone_number_hops_field, input.className(create_ats_regex_string("ats-phone"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-phone")), __method__, self)
  end

  # Returns the "PowerUp Rewards" number field for HOPS.
  def powerup_number_hops_field
    $tracer.trace(__method__)
    #unit_test_no_generate: powerup_number_hops_field, input.className(create_ats_regex_string("ats-rewardnumber"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-rewardnumber")), __method__, self)
  end

  # Returns "We're sorry but the loyalty card number you provided is not valid" Label for HOPS.
  def invalid_number_error_hops
    $tracer.trace(__method__)
    #unit_test_no_generate: invalid_number_error_hops, section.className(create_ats_regex_string("error_message"))
    return ToolTag.new(section.className(create_ats_regex_string("error_message")), __method__, self)
  end

  #Returns the "Finish" Button for HOPS.
  def finish_hops_button
    $tracer.trace(__method__)
    #unit_test_no_generate: finish_hops_button, button.id("finish_hops")
    return ToolTag.new(button.id("finish_hops"), __method__, self)
  end

  # Returns HOPS Order Confirm Label.
  def hops_order_confirm_label
    $tracer.trace(__method__)
    #unit_test_no_generate: hops_order_confirm_label, section.className(create_ats_regex_string("order_confirm_text"))
    return ToolTag.new(section.className(create_ats_regex_string("order_confirm_text")), __method__, self)
  end

  #Returns the "I am not a member" link for HOPS.
  def not_a_member_hops
    $tracer.trace(__method__)
    #unit_test_no_generate: not_a_member_hops, a.className(create_ats_regex_string("ats-nonmember"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-nonmember")), __method__, self)
  end

  # Returns the credit card type selector for HOPS.
  def credit_card_selector_hops
    $tracer.trace(__method__)
    #unit_test_no_generate: credit_card_selector_hops, get_self.select.id("ValidationModel_cc_type"); GameStopMobileSelector
    return GameStopMobileSelector.new(
        ToolTag.new(get_self.select.id("ValidationModel_cc_type"), __method__, self), self
    )
  end

  # Returns the credit card number field for HOPS.
  def credit_card_number_hops_field
    $tracer.trace(__method__)
    #unit_test_no_generate: credit_card_number_hops_field, input.className(create_ats_regex_string("ats-ccnumber"))
    return ToolTag.new(input.className(create_ats_regex_string("ats-ccnumber")), __method__, self)
  end

  # Returns "Please enter a valid loyalty card number" Label.
  def gsm_error_message
    $tracer.trace(__method__)
    #unit_test_no_generate: pur_number_error, li.className(create_ats_regex_string("ats-errormsg"))
    return ToolTag.new(li.className(create_ats_regex_string("ats-errormsg")), __method__, self)
  end

  # Returns the select store button.
  def select_store_button
    #unit_test: select_store_button, button.id("select_store_button")
    $tracer.trace(__method__)
    return ToolTag.new(button.id("select_store_button"), __method__, self)
  end

	# Returns the continue shopping button
	def continue_shopping_button
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("empty_cart")).find.a, __method__, self)
  end
	
	# Returns the "Availability" button.
  def availability_slide
		$tracer.trace(__method__)
		return ToolTag.new(h3.className("/filter_title$/"), __method__, self)
  end 
	
	# Returns the submit button
	def gsm_filter_submit_button
		$tracer.trace(__method__)
		return ToolTag.new(button.id(create_ats_regex_string("btnFilter")), __method__, self)
  end 

	# Returns Optional Gift Message Field.
  def chkout_gift_message_field
    $tracer.trace(__method__)
		return ToolTag.new(textarea.className(create_ats_regex_string("ats-giftmsgform")), __method__, self)
  end 	

  # Returns the unused promocode message
  def unused_promocode_message
    $tracer.trace(__method__)
    return ToolTag.new(section.className(create_ats_regex_string("/system_message info_message/")).find.p, __method__, self)
  end

	# Returns the order confirmation label.
  def chkout_order_confirmation_label
    $tracer.trace(__method__)
    return ToolTag.new(jquery(".ats-orderconfirmlabel"), __method__, self)
  end	
	
  # Returns the order confirmation number label.
  def chkout_order_confirmation_number_label
    $tracer.trace(__method__)
    return ToolTag.new(jquery(".ats-orderconfirmnumber"), __method__, self)
  end
	
	# Returns "Digital Wallet" selector.
  def chkout_digital_wallet_selector
		$tracer.trace(__method__)
		return GameStopMobileSelector.new(ToolTag.new(get_self.select.id(create_ats_regex_string("walletCards")), __method__, self), self)
	end 	
	
	# Returns the google analytics javascript
	def google_analytics_script
		$tracer.trace(__method__)
		return script.innerText("/var accountNumber = 'UA-10897913-11';/").innerText
	end  

  # Returns HOPS "Find a Store" button in checkout.
  def hops_find_store_button
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-hops-handling-btn")), __method__, self)
  end

	# Returns HOPS request success message
	def hops_success_message
   $tracer.trace(__method__)
	return ToolTag.new(section.id(create_ats_regex_string("submit_success")), __method__, self)
  end
	
	# Returns CreditCard radio button
	def cc_payment_option
		$tracer.trace(__method__)
		return ToolTag.new(section.id("payment_options").find.p.id("/creditcardselected/"), __method__, self)
	end
	
end