module GameStopRespMobileCartFinder

  # Returns mgs_cart_modal
  def mgs_cart_modal
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-cartModal")), __method__)
	end

	# Returns mgs_cart_modal_prod_section
  def mgs_cart_modal_prod_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-cartModal-productSection")), __method__)
	end

	# Returns mgs_cart_modal_prod_img
  def mgs_cart_modal_prod_img
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-cartModal-prodImg")).img, __method__)
	end
	
	# Returns mgs_cart_modal_prod_details
  def mgs_cart_modal_prod_details
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-cartModal-prodDetails")), __method__)
	end
	
	# Returns mgs_cart_modal_prod_hdr
  def mgs_cart_modal_prod_hdr
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-cartModal-addToCartLbl")), __method__)
	end
	
	# Returns mgs_cart_modal_prod_name_cond
  def mgs_cart_modal_prod_name_cond
		$tracer.trace(__method__)
		return ToolTag.new(h1.className(create_ats_regex_string("ats-cartModal-prodNameCond")), __method__)
	end
	
	# Returns mgs_cart_modal_prod_platform
  def mgs_cart_modal_prod_platform
		$tracer.trace(__method__)
		return ToolTag.new(h4.className(create_ats_regex_string("ats-cartModal-prodPlatform")), __method__)
	end
	
	# Returns mgs_cart_modal_prod_price
  def mgs_cart_modal_prod_price
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-cartModal-prodPrice")), __method__)
	end
	
	
	# Returns mgs_cart_modal_actions_section
  def mgs_cart_modal_actions_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-cartModal-actions")), __method__)
	end
	
	# Returns mgs_cart_modal_chkout_btn
  def mgs_cart_modal_chkout_btn
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-cartModal-chkoutBtn")), __method__)
	end
	
	# Returns mgs_cart_modal_continue_shopping
  def mgs_cart_modal_continue_shopping
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-cartModal-contShop")), __method__)
	end
	
	
	# Returns mgs_cart_modal_prod_terms
  def mgs_cart_modal_prod_terms
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-cartModal-terms")), __method__)
	end	
	
end