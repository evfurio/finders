module ProfileForgotPasswordFinder

  # # ################################################################
  # # ###	Finders moved from GameStop's Forgot Password Finder File###
  # # ################################################################

	# Returns "forgot your password?" link.
	def forgot_your_password_link()
		# unit_test_no_generate: forgot_your_password_link, a.className(create_ats_regex_string("ats-forgotpwdlnk"))
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-forgotpwdlnk")), __method__)
	end

	# Returns the email address field for retrieving a forgotten password.
	def forgot_password_email_field()
		# unit_test_no_generate: forgot_password_email_field, input.className(create_ats_regex_string("ats-forgotpwdemailfield"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-forgotpwdemailfield")), __method__)
	end

	# Returns the Submit button to retrieve a forgotten password.
	def send_password_button()
		# unit_test_no_generate: send_password_button, input.className(create_ats_regex_string("ats-sendpwdbtn"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-sendpwdbtn")), __method__)
	end

	# Returns the text label in the window after the password retrieval actually happens.
	def password_retrieval_label()
		# unit_test_no_generate: password_retrieval_label, get_self.p.className(create_ats_regex_string("ats-pwdretrievallbl"))
		$tracer.trace(__method__)
		return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-pwdretrievallbl")), __method__)
	end

  # # #########################################################
  # # ###	New finders for Forgot Password page ###
  # # #########################################################

	# Returns the forgot password page's title.
	def password_retrieval_header_label()
		# unit_test_no_generate: password_retrieval_header_label, h2.className(create_ats_regex_string("ats-pwdretrievallbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h2.className(create_ats_regex_string("ats-pwdretrievallbl")), __method__)
	end
	
	# Returns the forgot password page's text title.
	def forgot_password_label()
		# unit_test_no_generate: forgot_password_label, h4.className(create_ats_regex_string("ats-forgotpwdlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h4.className(create_ats_regex_string("ats-forgotpwdlbl")), __method__)
	end
	
	# Returns the forgot password page's descriptive text.
	def forgot_password_text_label()
		# unit_test_no_generate: forgot_password_text_label, get_self.p.className(create_ats_regex_string("ats-forgotpwdtxtlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-forgotpwdtxtlbl")), __method__)
	end
	
	# Returns the field label for email.
	def forgot_password_email_label()
		# unit_test_no_generate: forgot_password_email_label, label.className(create_ats_regex_string("ats-forgotpwdemaillbl"))
		$tracer.trace(__method__)
		return ToolTag.new(label.className(create_ats_regex_string("ats-forgotpwdemaillbl")), __method__)
	end
	
	# Returns the label for removing credit card info.
	def forgot_password_note_label()
		# unit_test_no_generate: forgot_password_note_label, get_self.p.className(create_ats_regex_string("ats-forgotpwdnotelbl"))
		$tracer.trace(__method__)
		return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-forgotpwdnotelbl")), __method__)
	end
	
	# Returns the error label for invalid or non-existing email address entered.
	def password_retrieval_error_label()
		# unit_test_no_generate: password_retrieval_error_label, div.className(create_ats_regex_string("ats-pwdretrievalerrorlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-pwdretrievalerrorlbl")), __method__)
  end

	# # #########################################################
  # # ###	New finders for Reset Password page ###
  # # #########################################################
	
	# Returns the Reset Password page's header label
	def reset_password_label()
		# unit_test_no_generate: reset_password_label, h4.className(create_ats_regex_string("ats-resetpwdlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h4.className(create_ats_regex_string("ats-resetpwdlbl")), __method__)
	end
	
	# Returns the text prompt for the new password field
	def new_password_label()
		# unit_test_no_generate: new_password_label, label.className(create_ats_regex_string("ats-newpwdlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(label.className(create_ats_regex_string("ats-newpwdlbl")), __method__)
	end
	
	# Returns the text prompt for the confirm password field
	def confirm_new_password_label()
		# unit_test_no_generate: confirm_new_password_label, label.className(create_ats_regex_string("ats-confirmpwdlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(label.className(create_ats_regex_string("ats-confirmpwdlbl")), __method__)
	end
	
	# Returns the new password field - DUPLICATE
	def new_password_field()
		# unit_test_no_generate: new_password_field, input.className(create_ats_regex_string("ats-newpwdfield"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-newpwdfield")), __method__)
	end
	
	# Returns the confirm new password field - DUPLICATE
	def confirm_new_password_field()
		# unit_test_no_generate: confirm_new_password_field, input.className(create_ats_regex_string("ats-confirmpwdfield"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-confirmpwdfield")), __method__)
	end
	
	# Returns the reset password submit button
	def reset_password_submit_button()
		# unit_test_no_generate: reset_password_submit_button, input.className(create_ats_regex_string("ats-submitbtn"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-submitbtn")), __method__)
	end
	
	# Returns the Reset password page's error message
	def reset_password_error_label()
		# unit_test_no_generate: reset_password_error_label, div.className(create_ats_regex_string("ats-resetpwderrorlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-resetpwderrorlbl")), __method__)
	end
	
	# Returns the Reset password page's success message
	def reset_password_success_label()
		# unit_test_no_generate: reset_password_success_label, get_self.p.className(create_ats_regex_string("ats-resetpwdsuccesslbl"))
		$tracer.trace(__method__)
		return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-resetpwdsuccesslbl")), __method__)
	end

end
