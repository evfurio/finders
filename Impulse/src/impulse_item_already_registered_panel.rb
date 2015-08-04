# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This class houses and provides finders for the "item already registered"
# panel that appears when an account attempts to repurchase an item.
# == Usage
#  panel = @browser.item_already_registered_panel.purchase_as_gift_order_link
class ImpulseItemAlreadyRegisteredPanel < CommonComponent

  # Returns the purchase as gift order link
  def purchase_as_gift_order_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(div.id("cboxBottomCenter").find.div.find.a, __method__, @browser)
  end
end