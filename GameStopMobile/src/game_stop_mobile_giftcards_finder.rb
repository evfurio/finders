# Copyright:: Copyright (c) 2014 GameStop, Inc.
# Not for external distribution.

module GameStopMobileGiftCardsFinder
  # Returns Gift Card link.
  def gift_card_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-nav_gift_cards_link")), __method__, self)
  end

  # Returns Gift Card Header.
  def gift_card_header
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-giftcardlbl")), __method__, self)
  end

  # Returns "Buy a Gift Card" link.
  def buy_gift_card_link
    $tracer.trace(__method__)
    return ToolTag.new(li.className("leftColumn").find.a, __method__, self)
  end

  # Returns the "Choose Card Type" dropdown.
  def card_type_list
    $tracer.trace(__method__)
    return ToolTag.new(div.id("ChooseType").select.id("cardType"), __method__, self)
  end
	
	# Returns the "Gift Amount" dropdown.
  def gift_amount_list
    $tracer.trace(__method__)
    return ToolTag.new(div.className("leftColumn").select.id("giftAmount"), __method__, self)
  end
	
	# Returns the "Quantity" field.
  def quantity_text
    $tracer.trace(__method__)
    return ToolTag.new(input.id("quantity"), __method__, self)
  end 

	# Returns the "Quantity Error message" popup.
  def quantity_error_message
    $tracer.trace(__method__)
    return ToolTag.new(div.id("ChooseQuantity").span, __method__, self)
  end
	
	# Returns the "Amount" field.
  def amount_text
    $tracer.trace(__method__)
    return ToolTag.new(input.id("amount"), __method__, self)
  end 
	
	# Returns the "Amount Error Message" popup.
  def amount_error_message
    $tracer.trace(__method__)
    return ToolTag.new(div.id("ChooseAmount").div.className("errorPopup").span, __method__, self)
  end 	
	
	# Returns the "Add GiftCard to Cart" button.
  def add_gc_to_cart
    $tracer.trace(__method__)
    return ToolTag.new(a.id("addToCart"), __method__, self)
  end 	
	
end

