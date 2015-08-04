# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

module GameStopMobileAccountInfoFinder
  # Return the "Log In / Register" link.
  def log_in_link
    $tracer.trace(__method__)
    #unit_test_no_generate: log_in_link, li.id("login_link").find.a.href("/Login/")
    return ToolTag.new(li.id("login_link").find.a.href("/loginqa/"), __method__, self)
  end

  # Returns the "Log Out" link.
  def log_out_link
    $tracer.trace(__method__)
    #unit_test_no_generate: log_out_link, li.id("login_link").find.a.href("/Logout/")
    return ToolTag.new(li.id("login_link").find.a.href("/Logout/"), __method__, self)
  end

  # Return "Log into My Account" button.
  def log_into_my_account_button
    $tracer.trace(__method__)
    #unit_test_no_generate: log_into_my_account_button, li.id("log_in_link").find.button
    return ToolTag.new(li.id("log_in_link").find.button, __method__, self)
  end

  # Returns the "Password" field.
  def password_field
    $tracer.trace(__method__)
    #unit_test_no_generate: password_field, input.id("Password")
    return ToolTag.new(input.id("Password"), __method__, self)
  end

  # Returns the "Log In" button.
  def log_in_button
    $tracer.trace(__method__)
    #unit_test_no_generate: log_in_button, section.id("log_in_form").find.button
    return ToolTag.new(section.id("log_in_form").find.button, __method__, self)
  end

  # Returns the "First Name" field.
  def first_name_field
    $tracer.trace(__method__)
    #unit_test_no_generate: first_name_field, input.id("FirstName")
    return ToolTag.new(input.id("FirstName"), __method__, self)
  end

  # Returns the "Last Name" field.
  def last_name_field
    $tracer.trace(__method__)
    #unit_test_no_generate: last_name_field, input.id("LastName")
    return ToolTag.new(input.id("LastName"), __method__, self)
  end

  # Returns the "Address 1" field.
  def address_1_field
    $tracer.trace(__method__)
    #unit_test_no_generate: address_1_field, input.id("Line1")
    return ToolTag.new(input.id("Line1"), __method__, self)
  end

  # Returns the "Address 2 (optional)" field.
  def address_2_field
    $tracer.trace(__method__)
    #unit_test_no_generate: address_2_field, input.id("Line2")
    return ToolTag.new(input.id("Line2"), __method__, self)
  end

  # Returns the "City" field.
  def city_field
    $tracer.trace(__method__)
    #unit_test_no_generate: city_field, input.id("City")
    return ToolTag.new(input.id("City"), __method__, self)
  end

  # Returns the "State" selector.
  def state_province_selector
    $tracer.trace(__method__)
    #unit_test_no_generate: state_province_selector, get_self.select.id("State"); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.id("State"), __method__, self), self)
  end

  # Returns the "Zip/Postal Code" field.
  def zip_postal_code_field
    $tracer.trace(__method__)
    #unit_test_no_generate: zip_postal_code_field, input.id("PostalCode")
    return ToolTag.new(input.id("PostalCode"), __method__, self)
  end

  # Returns the "Country" selector.
  def country_selector
    $tracer.trace(__method__)
    #unit_test_no_generate: country_selector, get_self.select.id("CountryCode"); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.id("CountryCode"), __method__, self), self)
  end

  # Returns the "Phone Number" field.
  def phone_number_field
    $tracer.trace(__method__)
    #unit_test_no_generate: phone_number_field, input.id("PhoneNumber")
    return ToolTag.new(input.id("PhoneNumber"), __method__, self)
  end

  # Returns the "Purchaser's Email" field.
  def email_address_field
    $tracer.trace(__method__)
    #unit_test_no_generate: email_address_field, input.id("Email")
    return ToolTag.new(input.id("Email"), __method__, self)
  end

  # Returns the "Confirm Email" field.
  def confirm_email_address_field
    $tracer.trace(__method__)
    #unit_test_no_generate: confirm_email_address_field, input.id("EmailConfirm")
    return ToolTag.new(input.id("EmailConfirm"), __method__, self)
  end

  # Returns the credit card type selector.
  def credit_card_selector
    $tracer.trace(__method__)
    #unit_test_no_generate: credit_card_selector, get_self.select.id("CardType"); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.id("CardType"), __method__, self), self)
  end

  # Returns the credit card month selector.
  def credit_card_month_selector
    $tracer.trace(__method__)
    #unit_test_no_generate: credit_card_month_selector, get_self.select.id("ExpireMonth"); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.id("ExpireMonth"), __method__, self), self)
  end

  # Returns the credit card year selector.
  def credit_card_year_selector
    $tracer.trace(__method__)
    #unit_test_no_generate: credit_card_year_selector, get_self.select.id("ExpireYear"); GameStopMobileSelector
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.id("ExpireYear"), __method__, self), self)
  end

  # Returns the credit card number field.
  def credit_card_number_field
    $tracer.trace(__method__)
    #unit_test_no_generate: credit_card_number_field, input.id("CardNumber")
    return ToolTag.new(input.id("CardNumber"), __method__, self)
  end

end

