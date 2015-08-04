# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

module GameStopMobileCartFinder
  # Returns the list of items (GameStopMobileCartList).
  def cart_list
    $tracer.trace(__method__)
    #unit_test: cart_list, get_self.table.id("order_summary").find.tr; GameStopMobileCartList
    return GameStopMobileCartList.new(ToolTag.new(get_self.table.id("order_summary").find.tr, __method__, self), self)
  end

  # Returns "View Cart" "button".
  def view_cart_button
    $tracer.trace(__method__)
    #unit_test: view_cart_button, li.id("nav_cart").find.a
    # return ToolTag.new(li.id("nav_cart").find.a, __method__, self)
    return ToolTag.new(a.className(create_ats_regex_string("ats-nav_cart_link")), __method__, self)
  end

  # Returns the "Shopping Cart" label.
  def shopping_cart_label
    $tracer.trace(__method__)
    #unit_test: shopping_cart_label, div.id("cartPlaceholder")
    return ToolTag.new(div.id("cartPlaceholder"), __method__, self)
  end

  # Returns the "Edit Cart" link.
  def shopping_cart_edit_link
    $tracer.trace(__method__)
    #unit_test: shopping_cart_edit_link,a.id("edit_cart")
    return ToolTag.new(a.id("edit_cart"), __method__, self)
  end

  # Returns the edit cart "Done" link.
  def shopping_cart_edit_done_link
    $tracer.trace(__method__)
    #unit_test: shopping_cart_edit_done_link, a.id("edit_cart_done")
    return ToolTag.new(a.id("edit_cart_done"), __method__, self)
  end

  # Returns the empty cart label.
  def empty_cart_label
    $tracer.trace(__method__)
    #unit_test: empty_cart_label, div.className("empty_cart")
    return ToolTag.new(div.className("empty_cart"), __method__, self)
  end

end

