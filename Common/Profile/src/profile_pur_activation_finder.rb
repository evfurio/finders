module ProfilePurActivationFinder

	# # #########################################################
    # # ###	New finders for PUR pages ###
    # # #########################################################
	
	# Returns the banner label at the top of sign in/create acct page after clicking on PUR's activate link
	def pur_activation_label()
		# unit_test_no_generate: pur_activation_label, div.className(create_ats_regex_string("ats-puractivationlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-puractivationlbl")), __method__)
	end
	
	# Returns the top line of the banner label at the top of the sign in/create acct page after clicking on PUR's activate link
	def requires_account_label()
		# unit_test_no_generate: requires_account_label, h1.className(create_ats_regex_string("ats-requiresacctlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h1.className(create_ats_regex_string("ats-requiresacctlbl")), __method__)
	end
	
	# Returns the bottom line of the banner label at the top of the sign in/create acct page after clicking on PUR's activate link
	def sign_in_create_prompt_label()
		# unit_test_no_generate: sign_in_create_prompt_label, get_self.p.className(create_ats_regex_string("ats-signincreatepromptlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-signincreatepromptlbl")), __method__)
	end

	# # #########################################################
    # # ###	New finders for PUR Activation  ###
    # # #########################################################
    ######### PUR Activate First Page - Authentication

	# Returns label on the PUR Activation page.
	def activate_pur_header_label
		# unit_test_no_generate: activate_pur_header_label, h2.className(create_ats_regex_string("ats-activatepurlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h2.className(create_ats_regex_string("ats-activatepurlbl")), __method__)
  end

  # Returns power up rewards card number field on the PUR Activation page. Same finder exists in GameStop cart finder file with different finder name
  def profile_powerup_rewards_number_field
    # unit_test_no_generate: profile_powerup_rewards_number_field, input.className(create_ats_regex_string("ats-purnumber"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-purnumber")), __method__)
  end

	# Returns the field label for Email or Phone on the PUR Activation page.
	def pur_email_phone_label
		# unit_test_no_generate: pur_email_phone_label, label.className(create_ats_regex_string("ats-puremailphonefieldlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(label.className(create_ats_regex_string("ats-puremailphonefieldlbl")), __method__)
	end

	# Returns the email address field on the PUR Activation page.
	def pur_email_field
		# unit_test_no_generate: pur_email_field, input.className(create_ats_regex_string("ats-puremailfield"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-puremailfield")), __method__)
	end

	# Returns the phone field on the PUR Activation page.
	def pur_phone_field
		# unit_test_no_generate: pur_phone_field, input.className(create_ats_regex_string("ats-purphonefield"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-purphonefield")), __method__)
	end

	# Returns the Continue button on the PUR Activation page.
	def activate_pur_continue_button
		# unit_test_no_generate: activate_pur_continue_button, button.className(create_ats_regex_string("ats-purcontinuebtn"))
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-purcontinuebtn")), __method__)
	end

	# Returns the error message on the PUR Activation page when invalid info is entered.
	def pur_authentication_error_label
		# unit_test_no_generate: pur_authentication_error_label, div.className(create_ats_regex_string("ats-purautherrorlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-purautherrorlbl")), __method__)
	end

	# Returns the error message on the PUR Activation card number field when invalid card number is entered.
	def pur_card_number_error_label
		# unit_test_no_generate: pur_card_number_error_label, span.className(create_ats_regex_string("ats-purcardnumerrorlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-purcardnumerrorlbl")), __method__)
	end

	# Returns the error message close button on the PUR Activation card number field when invalid card number is entered.
	def pur_card_number_error_close_button
		# unit_test_no_generate: pur_card_number_error_close_button, span.className(create_ats_regex_string("ats-purcardnumerrorlbl")).a
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-purcardnumerrorlbl")).a, __method__)
	end

	def pur_number_image
		# unit_test_no_generate: pur_number_image, img.className(create_ats_regex_string("ats-purnumimage"))
		$tracer.trace(__method__)
		return ToolTag.new(img.className(create_ats_regex_string("ats-purnumimage")), __method__)
	end

	######### PUR Activate Second Page - Activation

	# Returns the text prompt for Step 1 section.
	def pur_step1_prompt_label
		# unit_test_no_generate: pur_step1_prompt_label, h3.className(create_ats_regex_string("ats-purstep1promptlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h3.className(create_ats_regex_string("ats-purstep1promptlbl")), __method__)
	end

  # Returns the checkbox for Text Message opt in on the Communications and PUR Activation pages.
  def pur_opt_in_text_messages_checkbox()
    # unit_test_no_generate: pur_opt_in_text_messages_checkbox, input.className(create_ats_regex_string("ats-purtxtmsgbox"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-purtxtmsgbox")), __method__)
  end

  # Returns the checkbox label for the Text Messages opt in for the Activation and Communications pages.
  def pur_text_messages_label
    # unit_test_no_generate: pur_text_messages_label, span.className(create_ats_regex_string("ats-purtxtmsglbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-purtxtmsglbl")), __method__)
  end

  # Returns the checkbox for Phone Calls opt in on the Communications and PUR Activation pages.
  def pur_opt_in_phone_checkbox()
    # unit_test_no_generate: pur_opt_in_phone_checkbox, input.className(create_ats_regex_string("ats-purphonebox"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-purphonebox")), __method__)
  end

  # Returns the checkbox label for the Phone Calls opt in.
  def pur_phone_calls_label
    # unit_test_no_generate: pur_phone_calls_label, span.className(create_ats_regex_string("ats-purphonecallslbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-purphonecallslbl")), __method__)
  end

  # Returns the checkbox for Mail opt in on the Communications and PUR Activation pages.
  def pur_opt_in_mail_checkbox()
    # unit_test_no_generate: pur_opt_in_mail_checkbox, input.className(create_ats_regex_string("ats-purmailbox"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-purmailbox")), __method__)
  end

  # Returns the checkbox label for the Mail to your home opt in.
  def pur_mail_label
    # unit_test_no_generate: pur_mail_label, span.className(create_ats_regex_string("ats-purmaillbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-purmaillbl")), __method__)
  end

  # Returns the input field for phone number during PUR Activation.
  def pur_primary_phone_field
    # unit_test_no_generate: pur_primary_phone_field, input.className(create_ats_regex_string("ats-purprimaryphonefield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-purprimaryphonefield")), __method__)
  end

  # Returns the error message for phone number input field during PUR Activation.
  def pur_phone_error_label
    # unit_test_no_generate: pur_phone_error_label, span.className(create_ats_regex_string("ats-purphoneerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-purphoneerrorlbl")), __method__)
  end

  # Returns the error message close button for phone number input field during PUR Activation.
  def pur_phone_error_close_button
    # unit_test_no_generate: pur_phone_error_close_button, span.className(create_ats_regex_string("ats-purphoneerrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-purphoneerrorlbl")).a, __method__)
  end

  # Returns the address from enrollment label during PUR Activation.
  def pur_address_label
    # unit_test_no_generate: pur_address_label, get_self.p.className(create_ats_regex_string("ats-puraddrlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-puraddrlbl")), __method__)
  end

  # Returns the text when there is no saved address during PUR Activation.
  def pur_no_address_label
    # unit_test_no_generate: pur_no_address_label, get_self.p.className(create_ats_regex_string("ats-purnoaddrlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-purnoaddrlbl")), __method__)
  end

  # Returns the + Add Address button during PUR Activation.
  def pur_add_address_button
    # unit_test_no_generate: pur_add_address_button, button.className(create_ats_regex_string("ats-puraddaddrbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-puraddaddrbtn")), __method__)
  end

  # Returns the Address Book button during PUR Activation.
  def pur_address_book_button
    # unit_test_no_generate: pur_address_book_button, button.className(create_ats_regex_string("ats-puraddrbookbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-puraddrbookbtn")), __method__)
  end

  # Returns the PUR communication preferences disclaimer label for phone and text during PUR Activation.
  def pur_disclaimer_label
    # unit_test_no_generate: pur_disclaimer_label, get_self.p.className(create_ats_regex_string("ats-purdisclaimerlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-purdisclaimerlbl")), __method__)
  end

	# Returns the text prompt for Step 2 section.
	def pur_step2_prompt_label
		# unit_test_no_generate: pur_step2_prompt_label, h3.className(create_ats_regex_string("ats-purstep2promptlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h3.className(create_ats_regex_string("ats-purstep2promptlbl")), __method__)
	end

	# Returns the security question drop down during PUR Activation and on Personal Info page.
	def pur_security_question_selector
		# unit_test_no_generate: pur_security_question_selector, get_self.select.className(create_ats_regex_string("ats-pursecurityquestionselector")); CommonSelector
		$tracer.trace(__method__)
		return CommonSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-pursecurityquestionselector")), __method__))
	end

	# Returns the security question error message during PUR Activation and on Personal Info page.
	def pur_security_question_error_label
		# unit_test_no_generate: pur_security_question_error_label, div.className(create_ats_regex_string("ats-pursecurityquestionerrorlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-pursecurityquestionerrorlbl")), __method__)
	end

	# Returns the security question answer input field during PUR Activation and on Personal Info page.
	def pur_security_answer_field
		# unit_test_no_generate: pur_security_answer_field, input.className(create_ats_regex_string("ats-pursecurityanswerfield"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-pursecurityanswerfield")), __method__)
	end

	# Returns the security question answer error message during PUR Activation and on Personal Info page.
	def pur_security_answer_error_label
		# unit_test_no_generate: pur_security_answer_error_label, span.className(create_ats_regex_string("ats-pursecurityanswererrorlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-pursecurityanswererrorlbl")), __method__)
	end

	# Returns the security question answer error close button during PUR Activation and on Personal Info page.
	def pur_security_answer_error_close_button
		# unit_test_no_generate: pur_security_answer_error_close_button, span.className(create_ats_regex_string("ats-pursecurityanswererrorlbl")).a
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-pursecurityanswererrorlbl")).a, __method__)
	end

	# Returns the text prompt for Step 3 section.
	def pur_step3_prompt_label
		# unit_test_no_generate: pur_step3_prompt_label, h3.className(create_ats_regex_string("ats-purstep3promptlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h3.className(create_ats_regex_string("ats-purstep3promptlbl")), __method__)
	end

	# Returns the text prompt for birthday.
	def pur_birthday_prompt_label
		# unit_test_no_generate: pur_birthday_prompt_label, h4.className(create_ats_regex_string("ats-purbdaypromptlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h4.className(create_ats_regex_string("ats-purbdaypromptlbl")), __method__)
	end

	# Returns the birth month drop down during PUR Activation.
	def pur_birth_month_selector
		# unit_test_no_generate: pur_birth_month_selector, get_self.select.className(create_ats_regex_string("ats-purmonthselector")); CommonSelector
		$tracer.trace(__method__)
		return CommonSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-purmonthselector")), __method__))
	end

	# Returns the birth day drop down during PUR Activation.
	def pur_birth_day_selector
		# unit_test_no_generate: pur_birth_day_selector, get_self.select.className(create_ats_regex_string("ats-purdayselector")); CommonSelector
		$tracer.trace(__method__)
		return CommonSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-purdayselector")), __method__))
	end

	# Returns the birth year drop down during PUR Activation.
	def pur_birth_year_selector
		# unit_test_no_generate: pur_birth_year_selector, get_self.select.className(create_ats_regex_string("ats-puryearselector")); CommonSelector
		$tracer.trace(__method__)
		return CommonSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-puryearselector")), __method__))
	end

	# Returns the birthday error message during PUR Activation.
	def pur_birthday_error_label
		# unit_test_no_generate: pur_birthday_error_label, div.className(create_ats_regex_string("ats-purbirthdayerrorlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-purbirthdayerrorlbl")), __method__)
	end

	# Returns the text prompt for gender.
	def pur_gender_prompt_label
		# unit_test_no_generate: pur_gender_prompt_label, h4.className(create_ats_regex_string("ats-purgenderpromptlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h4.className(create_ats_regex_string("ats-purgenderpromptlbl")), __method__)
	end

	# Returns the gender radio buttons during PUR Activation.
	def pur_gender_buttons
		# unit_test_no_generate: pur_gender_buttons, div.className(create_ats_regex_string("ats-purgenderoptions")).input; CommonRadioButtons
		$tracer.trace(__method__)
		return CommonRadioButtons.new(ToolTag.new(div.className(create_ats_regex_string("ats-purgenderoptions")).input, __method__))
  end

  # Returns the privacy policy text during PUR Activation.
  def pur_privacy_label
    # unit_test_no_generate: pur_privacy_label, get_self.p.className(create_ats_regex_string("ats-purprivacylbl"))
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-purprivacylbl")), __method__)
  end

  # Returns the Activate button during PUR Activation.
  def pur_activate_button
    # unit_test_no_generate: pur_activate_button, button.className(create_ats_regex_string("ats-puractivatebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-puractivatebtn")), __method__)
  end

	###### Address Book

	# Returns the Address Book header on the Address Book pop up during PUR activation.
	def pur_address_book_header_label
		# unit_test_no_generate: pur_address_book_header_label, h3.className(create_ats_regex_string("ats-puraddrbooklbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h3.className(create_ats_regex_string("ats-puraddrbooklbl")), __method__)
	end

	# Returns the list of address panels on the Address Book pop up during PUR activation.
	def pur_address_list
		# unit_test_no_generate: pur_address_list, span.className(create_ats_regex_string("ats-puraddrpanel"));PURAddressList
		$tracer.trace(__method__)
		return PURAddressList.new(span.className(create_ats_regex_string("ats-puraddrpanel")), __method__)
	end

	# Returns the Close button on the Address Book pop up during PUR activation.
	def pur_address_book_close_button
		# unit_test_no_generate: pur_address_book_close_button, button.className(create_ats_regex_string("ats-puraddrbookclosebtn"))
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-puraddrbookclosebtn")), __method__)
	end
	
	###### Success page
	
	# Returns the Congrats label after activating PUR.
	def pur_congrats_label
		# unit_test_no_generate: pur_congrats_label, div.className(create_ats_regex_string("ats-purcongratslbl"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-purcongratslbl")), __method__)
	end
	
	# Returns the descriptive text after activating PUR.
	def pur_success_text_label
		# unit_test_no_generate: pur_success_text_label, div.className(create_ats_regex_string("ats-pursuccesstxtlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-pursuccesstxtlbl")), __method__)
	end
	
	# Returns the Continue button after activating PUR.
	def pur_continue_button
		# unit_test_no_generate: pur_continue_button, button.className(create_ats_regex_string("ats-pursuccesscontinuebtn"))
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-pursuccesscontinuebtn")), __method__)
  end

  ##### Age gate error message

  # Returns the invalid age error label
  def pur_invalid_age_error_label
    # unit_test_no_generate: pur_invalid_age_error_label, get_self.p.className(create_ats_regex_string("ats-purinvalidageerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-purinvalidageerrorlbl")), __method__)
  end

  # Returns the privacy policy link
  def privacy_policy_link
    # unit_test_no_generate: privacy_policy_link, a.className(create_ats_regex_string("ats-privacypolicylnk"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-privacypolicylnk")), __method__)
  end

  # Returns the terms and conditions link
	def terms_and_conditions_link
    # unit_test_no_generate: terms_and_conditions_link, a.className(create_ats_regex_string("ats-tandclnk"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tandclnk")), __method__)
  end
end
