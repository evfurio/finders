module GameStopRespMobileErrorFinder

  # Returns mgs_error_modal
  def mgs_error_modal
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-errorModal")), __method__)
	end

	# Returns mgs_error_modal_content
  def mgs_error_modal_content
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-errorContent")), __method__)
	end
	
	# Returns mgs_error_modal_close_btn
  def mgs_error_modal_close_btn
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-errorExitBtn")), __method__)
	end
	
	# Returns mgs_error_modal_icon
  def mgs_error_modal_icon
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-errorMsg")).i, __method__)
	end
	
	# Returns mgs_error_modal_message
  def mgs_error_modal_message
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-errorMsg")).p, __method__)
	end
	
	# Returns mgs_error_modal_bkg
  def mgs_error_modal_bkg
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-errorBkg")), __method__)
	end
	
end