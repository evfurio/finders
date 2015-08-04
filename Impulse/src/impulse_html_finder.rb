# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for non-activity-specific actions.
#
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseHTMLFinder

	# Returns the impulse logo link in store pages only.
	def impulse_logo_link
		$tracer.trace(__method__)
		# unit_test_no_generate: impulse_logo_link, a.className(create_ats_regex_string("ats-gamestop-header-logo-link"))
		return ToolTag.new(a.className(create_ats_regex_string("ats-gamestop-header-logo-link")), __method__, self)
	end
  
end
