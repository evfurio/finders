module ProfileOrdersFinder

	# Returns the header title for the Orders page.
	def orders_header_label
		# unit_test_no_generate: orders_header_label, h2.className(create_ats_regex_string("ats-orderslbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h2.className(create_ats_regex_string("ats-orderslbl")), __method__)
	end

  # Returns the Order History link for Gamestop.com - same ats class name as GS.com header
  def gamestop_order_history_link
    # unit_test_no_generate: gamestop_order_history_link, a.className(create_ats_regex_string("ats-orderhist"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-orderhist")), __method__)
  end

	# Returns the Order History link for PowerUp Rewards.
	def card_activity_link
		# unit_test_no_generate: card_activity_link, a.className(create_ats_regex_string("ats-cardactivitylnk"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-cardactivitylnk")), __method__)
	end
  # Returns the Guest & In-store Orders link
  def guest_order_link
    # unit_test_no_generate: guest_order_link, a.className(create_ats_regex_string("ats-guestorderlookuplink"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-guestorderlookuplink")), __method__)
  end

  # Returns the GameStop logo image for the GS order history section
  def gamestop_orders_image
    # unit_test_no_generate: gamestop_orders_image, div.className(create_ats_regex_string("ats-gsordersimg"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-gsordersimg")), __method__)
  end

  # Returns the GameStop order history section title
  def gamestop_orders_label
    # unit_test_no_generate: gamestop_orders_label, span.className(create_ats_regex_string("ats-gsorderslbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-gsorderslbl")), __method__)
  end

  # Returns the GameStop order history description text
  def gamestop_orders_description_label
    # unit_test_no_generate: gamestop_orders_description_label, get_self.p.className(create_ats_regex_string("ats-gsordersdesclbl"))
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-gsordersdesclbl")), __method__)
  end

  # Returns the PowerUp Rewards logo image for the PUR order history section
  def pur_orders_image
    # unit_test_no_generate: pur_orders_image, div.className(create_ats_regex_string("ats-purordersimg"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-purordersimg")), __method__)
  end

  # Returns the PowerUp Rewards section title
  def pur_orders_label
    # unit_test_no_generate: pur_orders_label, span.className(create_ats_regex_string("ats-purorderslbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-purorderslbl")), __method__)
  end

  # Returns the PowerUp Rewards order history description text
  def pur_orders_description_label
    # unit_test_no_generate: pur_orders_description_label, get_self.p.className(create_ats_regex_string("ats-purordersdesclbl"))
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-purordersdesclbl")), __method__)
  end

  # Returns the Guest Checkout and In-store Orders title
  def guest_orders_label
    # unit_test_no_generate: guest_orders_label, h3.className(create_ats_regex_string("ats-guestorderslbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-guestorderslbl")), __method__)
  end

  # Returns the guest checkout and in-store orders description text
  def guest_orders_description_label
    # unit_test_no_generate: guest_orders_description_label, get_self.p.className(create_ats_regex_string("ats-guestordersdesclbl"))
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-guestordersdesclbl")), __method__)
  end
end
