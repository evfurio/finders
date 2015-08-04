# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2012 GameStop, Inc.
# Not for external distribution.

# == Overview
# This class houses and provides finders for the cart total panel.
# == Usage
#  list_item = @browser.cart_total_panel.should_exist

class ImpulseCartTotalPanel < CommonComponent

  # Returns the discounts panel.
  def discount_panel
    formatted_method = format_method(__method__)
    $tracer.trace(formatted_method)
    tt = ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-coupon-discounts-label")).parent("div"), formatted_method, @browser)
    return ImpulseCartDiscountsPanel.new(tt, @browser);
  end
end

class ImpulseCartDiscountsPanel < CommonComponent
  # Returns the discounts links list.
  def links_list
    formatted_method = format_method(__method__)
    $tracer.trace(formatted_method)
    tt = ToolTag.new(@tag.find.a.className(create_ats_regex_string("ats-coupon-discounts-remove-link")), formatted_method, @browser)
    return ImpulseDiscountLinksList.new(tt, @browser);
  end
end