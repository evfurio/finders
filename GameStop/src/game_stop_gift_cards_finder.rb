# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.


# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to product details.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopGiftCardsFinder

	# Returns the Choose GiftCard dropdown
	def choose_gift_card
		$tracer.trace(__method__)
		return GameStopGiftCardsPanel.new(ToolTag.new(div.className("/radioStyle/"), __method__,), self)
	end

	# Returns the GiftCard panel
	def purchase_gift_card
		$tracer.trace(__method__)
		return GameStopGiftCardsPanel.new(ToolTag.new(div.className("gcPurchaseRow"), __method__,), self)
	end
  
	# Returns the BUY Gift Card link
  def buy_gift_card_link_button
		$tracer.trace(__method__)
		return ToolTag.new(a.className("ats-buyagiftcardlnk"), __method__, self)
  end
    
	# Returns the Remove Gift Card link
  def remove_item_button
		$tracer.trace(__method__)
		return ToolTag.new(input.id("/btnRemoveCurrentOrder"), __method__, self)
  end
  
	# Returns the Add Gift Card to cart button
  def add_gift_card_button
		$tracer.trace(__method__)
		return ToolTag.new(a.className("ats-addgifttocartbtn"), __method__, self)
  end
  
	# Returns the Add Another Gift Card link
  def add_another_gift_card_button
		$tracer.trace(__method__)
		return ToolTag.new(input.className("ats-addanothergiftbtn"), __method__, self)
  end
  
	# Returns the Gift Card Business link
  def gift_card_for_business_button
		$tracer.trace(__method__)
		return ToolTag.new(a.id("/blueLinkUnderline/"), __method__, self)
  end
  
	# Returns the Gift Card amount error
  def gift_card_amount_error
		$tracer.trace(__method__)
		return ToolTag.new(div.id("/pnlAmountError/"), __method__, self)
  end
  
	# Returns the Gift Card quantity error
  def quantity_error_message
		$tracer.trace(__method__)
		return ToolTag.new(div.id("/pnlQuantityError/"), __method__, self)
  end

	# Returns the Total GC amount error
  def total_amount_error_message
		$tracer.trace(__method__)
		return ToolTag.new(div.id("/pnlValidationErrors/"), __method__, self)
  end
	
end