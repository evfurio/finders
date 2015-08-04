# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

module GameStopMobileOrderLookupFinder

  # Returns Order Lookup link.
  def order_lookup_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-nav_orders_link")), __method__, self)
  end

  # Returns Order Lookup Type Label.
  def order_lookup_type_label
    $tracer.trace(__method__)
    return ToolTag.new(section.id(create_ats_regex_string("lookup_type")), __method__, self)
  end

  # Returns Order Lookup by Login button.
  def order_lookup_by_login_button
    $tracer.trace(__method__)
    return ToolTag.new(li.id(create_ats_regex_string("lookup_by_login")).find.button, __method__, self)
  end

  # Returns Order Lookup by Confirmation button.
  def order_lookup_by_confirmation_button
    $tracer.trace(__method__)
    return ToolTag.new(li.id(create_ats_regex_string("lookup_by_confirmation")).find.button, __method__, self)
  end

  # Returns Order Lookup by CC button.
  def order_lookup_by_cc_button
    $tracer.trace(__method__)
    return ToolTag.new(li.id(create_ats_regex_string("lookup_by_cc")).find.button, __method__, self)
  end

  # Returns Order Lookup by CC button.
  def gsmw_log_out_link
    $tracer.trace(__method__)
    return ToolTag.new(li.id(create_ats_regex_string("login_link")).find.a, __method__, self)
  end

  # Returns Order Lookup Error message.
  def order_lookup_error_message
    $tracer.trace(__method__)
    return ToolTag.new(section.className(create_ats_regex_string("content_group")).find.p, __method__, self)
  end

  def order_history_list
    $tracer.trace(__method__)
    return GameStopMobileOrderHistoryList.new(ToolTag.new(get_self.section.className("content_group").find.table.tbody, __method__, self), self)
  end

  def order_confirmation_text
    $tracer.trace(__method__)
    return ToolTag.new(section.className(create_ats_regex_string("order_confirm_text")).find.p, __method__, self)
  end

  def order_shipping_info
    $tracer.trace(__method__)
    return ToolTag.new(section.id(create_ats_regex_string("customer_address")), __method__, self)
  end

  def order_billing_info
    $tracer.trace(__method__)
    return ToolTag.new(section.id(create_ats_regex_string("payment_information")), __method__, self)
  end

  def lookup_email_add
    $tracer.trace(__method__)
    return ToolTag.new(input.id(create_ats_regex_string("lookup_by_cc_email")), __method__, self)
  end

  def lookup_cc_last_4_digit
    $tracer.trace(__method__)
    return ToolTag.new(input.id(create_ats_regex_string("lookup_by_cc_number")), __method__, self)
  end

  def is_cc_a_purcc_chkbox
    $tracer.trace(__method__)
    return ToolTag.new(input.id(create_ats_regex_string("IsPurccCheckbox")), __method__, self)
  end

  def expire_month_selector
    $tracer.trace(__method__)
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.id("ExpireMonth"), __method__, self), self)
  end

  def expire_year_selector
    $tracer.trace(__method__)
    return GameStopMobileSelector.new(ToolTag.new(get_self.select.id("ExpireYear"), __method__, self), self)
  end

  def lookup_order_cc_button
    $tracer.trace(__method__)
    return ToolTag.new(section.id(create_ats_regex_string("lookup_by_cc_form")).find.button, __method__, self)
  end

  def lookup_order_error_message
    $tracer.trace(__method__)
    return ToolTag.new(section.className(create_ats_regex_string("error_message")).find.li, __method__, self)
  end

  def cc_4_digit_error_message
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("field-validation-error")).find.li, __method__, self)
  end



end

