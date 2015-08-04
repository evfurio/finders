module GameStopMobileFeedbackFinder

	# Returns the Weekly Ad link
	def mgs_weekly_ad_link
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-nav_weekly_ad_link")), __method__, self)
	end
	
	# Returns the Feedback link
	def mgs_feedback_link
		$tracer.trace(__method__)
		return ToolTag.new(jquery("a[href='#']"),__method__)
	end
	
	# Returns the Qualtrics script
	def mgs_qualtrics_script
		$tracer.trace(__method__)
		return ToolTag.new(div.id("qualtrics").script, __method__, self)
	end
	
	# Returns the Feedback popup modal
	def mgs_feedback_modal
		$tracer.trace(__method__)
		return ToolTag.new(div.className("/QSIPopOver/"), __method__, self)
	end
	
end

