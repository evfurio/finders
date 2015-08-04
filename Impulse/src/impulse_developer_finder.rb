# Author:: Chelsea Lovas & Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to developers.
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseDeveloperFinder
	# Returns the Impulse Developers login link (developer).
	def developer_login_link
		# unit_test_no_generate: developer_login_link, a.className(create_ats_regex_string("ats-login-link"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-login-link")), __method__, self)
	end

	# Returns the Impulse Developers header label (developer).
	def developer_header_label
		# unit_test_no_generate: developer_header_label, div.className(create_ats_regex_string("ats-developer-header-label"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-developer-header-label")), __method__, self)
	end

	# Returns the Impulse Developers Welcome label (developer).
	def developer_welcome_label
		# unit_test_no_generate: developer_welcome_label, span.className(create_ats_regex_string("ats-welcome-user-label"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-welcome-user-label")), __method__, self)
	end

	# Returns the Impulse Developers logout link (developer).
	def developer_logout_link
		# unit_test_no_generate: developer_logout_link, a.className(create_ats_regex_string("ats-logout-link"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-logout-link")), __method__, self)
	end

	# Returns the Impulse Developers Login Error label (developer).
	def developer_login_error_label
		# unit_test_no_generate: developer_login_error_label, span.className(create_ats_regex_string("ats-developer-login-error-label"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-developer-login-error-label")), __method__, self)
	end

	# Returns the Impulse Developers Login button (developer).
	def developer_login_button
		# unit_test_no_generate: developer_login_button, input.className(create_ats_regex_string("ats-login-button"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-login-button")), __method__, self)
	end

	# Returns the Impulse Developers Reports link (developer).
	def developer_reports_link
		# unit_test_no_generate: developer_reports_link, a.className(create_ats_regex_string("ats-developer-reports-link"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-developer-reports-link")), __method__, self)
	end

	# Returns the Impulse Developers Sales Chart label (developer).
	def developer_sales_chart_label
		# unit_test_no_generate: developer_sales_chart_label, span.className(create_ats_regex_string("ats-developer-sales-charts-label"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-developer-sales-charts-label")), __method__, self)
	end

	# Returns the Impulse Developers Product Data label (developer).
	def developer_product_data_label
		# unit_test_no_generate: developer_product_data_label, span.className(create_ats_regex_string("ats-developer-product-data-label"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-developer-product-data-label")), __method__, self)
	end

	# Returns the Impulse Developers Product Comparison Chart label (developer).
	def developer_product_comparison_chart_label
		# unit_test_no_generate: developer_product_comparison_chart_label, span.className(create_ats_regex_string("ats-developer-product-data-label"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-developer-product-data-label")), __method__, self)
	end

	# Returns the Impulse Developers email address field (developer)
	def developer_email_address_field
		# unit_test_no_generate: developer_email_address_field, input.className(create_ats_regex_string("ats-developer-email-address-field"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-developer-email-address-field")), __method__, self)
	end

	# Returns the Impulse Developers password field (developer).
	def developer_password_field
		# unit_test_no_generate: developer_password_field, input.className(create_ats_regex_string("ats-developer-password-field"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-developer-password-field")), __method__, self)
	end
end
