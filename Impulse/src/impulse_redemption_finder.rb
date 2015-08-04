# Author:: Stephanie Ngui & Paul Grizzaffi
# Copyright:: Copyright (c) 2012 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to redemption.
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseRedemptionFinder
	# Returns the Redemption page Gamestop header logo label (store).
	def redemption_gamestop_header_logo_label
		# unit_test_no_generate: redemption_gamestop_header_logo_label, div.className(create_ats_regex_string("ats-gamestop-header-logo-label"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-gamestop-header-logo-label")), __method__, self)
	end

	# Returns the Redemption page support page button (store).
	def support_page_button
		#unit_test_no_generate: support_page_button, a.className(create_ats_regex_string("ats-support-page-button"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-support-page-button")), __method__, self)
	end

	# Returns the Redemption page welcome user label (store).
	def redemption_welcome_user_label
		# unit_test_no_generate: redemption_welcome_user_label, get_self.p.className(create_ats_regex_string("ats-welcome-user-label"))
		$tracer.trace(__method__)
		return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-welcome-user-label")),__method__, self)
	end

	# Returns the Redemption page redemption code text field (store).
	def redemption_code_field
		# unit_test_no_generate: redemption_code_field, input.className(create_ats_regex_string("ats-redemption-code-field"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-redemption-code-field")), __method__, self)
	end

	# Returns the Redemption page captcha text field (store).
	def redemption_captcha_text_field
		# unit_test_no_generate: redemption_captcha_text_field, input.className(create_ats_regex_string("ats-captcha-text-field"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-captcha-text-field")), __method__, self)
	end

	# Returns the Redemption page captcha image (store).
	def redemption_captcha_image
		# unit_test_no_generate: redemption_captcha_image, img.className(create_ats_regex_string("ats-captcha-image"))
		$tracer.trace(__method__)
		return ToolTag.new(img.className(create_ats_regex_string("ats-captcha-image")), __method__, self)
	end

	# Returns the Redemption page redeem button (store).
	def redemption_redeem_button
		# unit_test_no_generate: redemption_redeem_button, input.className(create_ats_regex_string("ats-redeem-button"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-redeem-button")), __method__, self)
	end

	# Returns the Redemption page receipt image (store).
	def redemption_receipt_image
		# unit_test_no_generate: redemption_receipt_image, img.className(create_ats_regex_string("ats-receipt-image"))
		$tracer.trace(__method__)
		return ToolTag.new(img.className(create_ats_regex_string("ats-receipt-image")), __method__, self)
	end

	# Returns the Redemption page download now button (store).
	def redemption_download_now_button
		# unit_test_no_generate: redemption_download_now_button, a.className(create_ats_regex_string("ats-download-now-button"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-download-now-button")), __method__, self)
	end

	# Returns the Redemption page already have it button/continue button (store).
	def redemption_continue_button
		# unit_test_no_generate: redemption_continue_button, jquery("a[class~='ats-continue-button'], input[class~='ats-continue-button']")
		$tracer.trace(__method__)
		return ToolTag.new(jquery("a[class~='ats-continue-button'], input[class~='ats-continue-button']"), __method__, self)
	end

	# Returns the Redemption page download your game label (store).
	def redemption_download_your_game_label
		# unit_test_no_generate: redemption_download_your_game_label, h1.className(create_ats_regex_string("ats-download-your-game-label"))
		$tracer.trace(__method__)
		return ToolTag.new(h1.className(create_ats_regex_string("ats-download-your-game-label")), __method__, self)
	end

	# Returns the Redemption page all set label (store).
	def redemption_all_set_label
		# unit_test_no_generate: redemption_all_set_label, div.className(create_ats_regex_string("ats-all-set-label"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-all-set-label")), __method__, self)
	end

	# Returns the Redemption page logout link (store).
	def redemption_logout_link
		# unit_test_no_generate: redemption_logout_link, a.className(create_ats_regex_string("ats-logout-link"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-logout-link")), __method__, self)
	end

end
