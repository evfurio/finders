# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2012 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to the "Support" page.
# This module exists to provide an abstraction layer for

module ImpulseSupportFinder
	def support_label
		$tracer.trace(__method__)
		# unit_test_no_generate: support_label, h2.className(create_ats_regex_string("ats-support-label"))
		return ToolTag.new(h2.className(create_ats_regex_string("ats-support-label")), __method__, self)
	end
end