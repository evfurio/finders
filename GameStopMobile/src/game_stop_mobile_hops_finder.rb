# Copyright:: Copyright (c) 2014 GameStop, Inc.
# Not for external distribution.

module GameStopMobileHopsFinder

	# Returns HOPS Search Zipcode field
  def mgs_hops_search_zip
    $tracer.trace(__method__)
    return ToolTag.new(form.className("no_spinner").div.input.type("search"), __method__, self)
	end

	# Returns HOPS Stores section
  def mgs_hops_stores_section
    $tracer.trace(__method__)
    return ToolTag.new(section.id("hops_store_list"), __method__, self)
	end

	# Returns HOPS Store list
  def mgs_hops_store_list
    $tracer.trace(__method__)
    return GameStopMobileStoreList.new(ToolTag.new(section.id("hops_store_list").ol.li, __method__, self), self)
	end
	
	# Returns HOPS Continue button
  def mgs_hops_continue_button
    $tracer.trace(__method__)
    return ToolTag.new(div.id("continue_button"), __method__, self)
	end

	# Returns HOPS Confirm button
  def mgs_hops_confirm_button
    $tracer.trace(__method__)
    return ToolTag.new(div.id("finish_button"), __method__, self)
	end

	# Returns HOPS Request sent message
  def mgs_hops_request_sent_message
    $tracer.trace(__method__)
    return ToolTag.new(div.id("hops_request_sent").h4, __method__, self)
	end

	# Returns HOPS Order confirm message
  def mgs_hops_order_confirm_message
    $tracer.trace(__method__)
    return ToolTag.new(div.className("order_confirm_text"), __method__, self)
	end

end

