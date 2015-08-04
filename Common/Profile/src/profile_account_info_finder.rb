module ProfileAccountInfoFinder

	# Returns the Sign In header label for the sign in section.
	def login_header_label()
		# unit_test_no_generate: login_header_label, h2.className(create_ats_regex_string("ats-loginlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h2.className(create_ats_regex_string("ats-loginlbl")), __method__)	
	end
		
	# Returns the email address input field label.
	def login_email_address_label()
		# unit_test_no_generate: login_email_address_label, label.className(create_ats_regex_string("ats-loginemailaddrlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(label.className(create_ats_regex_string("ats-loginemailaddrlbl")), __method__)	
	end
	
	# Returns the password input field label.
	def login_password_label()
		# unit_test_no_generate: login_password_label, label.className(create_ats_regex_string("ats-loginpwdlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(label.className(create_ats_regex_string("ats-loginpwdlbl")), __method__)	
	end
	
	# Returns the stay signed in checkbox.
	def remember_me_checkbox()
		# unit_test_no_generate: remember_me_checkbox, input.className(create_ats_regex_string("ats-remembermebox"))
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-remembermebox")), __method__)	
	end
	
	# Returns the stay signed in label.
	def remember_me_label()
		# unit_test_no_generate: remember_me_label, label.className(create_ats_regex_string("ats-remembermelbl")).span
		$tracer.trace(__method__)
		return ToolTag.new(label.className(create_ats_regex_string("ats-remembermelbl")).span, __method__)	
	end
	
	# Returns the label for prompting users to create an account.
	def create_now_label()
		# unit_test_no_generate: create_now_label, h2.className(create_ats_regex_string("ats-createnowlbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h2.className(create_ats_regex_string("ats-createnowlbl")), __method__)	
  end

  # TODO Update after checkout login changes
  # Returns the "E-mail Address" field.
  # LogIn_UserName
  def email_address_field()
    $tracer.trace(__method__)
    # new: ats-tags
    return ToolTag.new(jquery("input[id$='LogIn_UserName'], input[class~='ats-emailaddrfield'], input[class~='ats-emailfield'], input[id*='txtEmailAddress'], input[id$='loginControl_UserName']"), __method__)
  end

  # TODO Update after checkout login changes
  # Returns the "Password" field.
  # LogIn_password
  def password_field()
    $tracer.trace(__method__)
    # new: ats-tags
    return ToolTag.new(jquery("input[id$='LogIn_password'], input[class~='ats-pwdfield'], input[id$='loginControl_password']"), __method__)
  end

  # TODO Update after checkout login changes
  # Returns the "Log In" button.
  def log_in_button()
    $tracer.trace(__method__)
    # new: ats-tags
    return ToolTag.new(jquery("button[class~='ats-loginbtn'], a[class~='ats-loginbtn'], input[name$='loginButton']"), __method__)
  end

  # Returns the link to the "Create an Account" button.
  def create_an_account_button()
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-createacctbtn")), __method__)
  end

  # TODO Update after checkout login changes
  # Returns the "E-mail Address" field for creating an account.
  def create_email_address_field()
    $tracer.trace(__method__)
    #return ToolTag.new(input.id("/CreateAccountHorizontal_emailTextBox/"), __method__)
    #return ToolTag.new(input.className(create_ats_regex_string("ats-createemailaddr")), __method__)
    return ToolTag.new(jquery("input[id$='CreateAccountHorizontal_emailTextBox'], input[class~='ats-createemailaddr']"), __method__)
  end

  # TODO Update after checkout login changes
  # Returns the "Password" field for creating an account.
    def create_password_field()
    $tracer.trace(__method__)
    #return ToolTag.new(input.id("/CreateAccountHorizontal_PasswordText/"), __method__)
    #return ToolTag.new(input.className(create_ats_regex_string("ats-createpwdfield")), __method__)
    return ToolTag.new(jquery("input[id$='CreateAccountHorizontal_PasswordText'], input[class~='ats-createpwdfield']"), __method__)
  end

  # TODO Update after checkout login changes
  # Returns the "Confirm Password" field.
  def confirm_password_field
    $tracer.trace(__method__)
    #return ToolTag.new(input.id("/ConfirmPasswordText/"), __method__)
    #return ToolTag.new(input.className(create_ats_regex_string("ats-confirmpwdfield")), __method__)
    return ToolTag.new(jquery("input[class~='ats-confirmpwdfield']"), __method__)
  end

  # TODO Update after checkout login changes
  # Returns the "Current Password" field.
  def current_password_field
    $tracer.trace(__method__)
    return ToolTag.new(jquery("input[class~='ats-currentpwdfield']"), __method__)
  end

  # TODO Update after checkout login changes
  # Returns the "New Password" field.
  def new_password_field
    $tracer.trace(__method__)
    return ToolTag.new(jquery("input[class~='ats-newpwdfield']"), __method__)
  end

  # TODO Update after checkout login changes
  # Returns the submit button. Used when creating an account.
  def submit_button()
    $tracer.trace(__method__)
    #return ToolTag.new(input.id("/CreateAccountButton/"), __method__)
    #return ToolTag.new(button.className(create_ats_regex_string("ats-submitbtn")), __method__)
    return ToolTag.new(jquery("input[id$='CreateAccountButton'], button[class~='ats-submitbtn']"), __method__)
  end

  # TODO Update after checkout login changes
  # Returns the email opt-in checkbox.
  def email_opt_in_checkbox()
    $tracer.trace(__method__)
    #return ToolTag.new(input.id("/chkE[Mm]ailOptIn/"), __method__)
    #return ToolTag.new(input.className(create_ats_regex_string("ats-optinbox")), __method__)
    return ToolTag.new(jquery("input[id$='chkE[Mm]ailOptIn'], input[class~='ats-optinbox']"), __method__)
  end

  # Returns the login validation error panel, used on the login pages
  # found in HTML differently than the error_message_panel
  # (in game_stop_html_finder.rb).
  def log_in_error_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-loginerrorpanel")), __method__)
	end

  # Returns the Log in now button.
  def show_log_in_button()
    # unit_test_no_generate: show_log_in_button, button.className(create_ats_regex_string("ats-showloginbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-showloginbtn")), __method__)
  end

  # Returns the Create Account section header.
  def create_user_header_label()
    # unit_test_no_generate: create_user_header_label, h2.className(create_ats_regex_string("ats-createuserheaderlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h2.className(create_ats_regex_string("ats-createuserheaderlbl")), __method__)
  end

  # Returns the E-mail Address label for the create account section.
  def create_email_address_label()
    # unit_test_no_generate: create_email_address_label, label.className(create_ats_regex_string("ats-createemailaddrlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(label.className(create_ats_regex_string("ats-createemailaddrlbl")), __method__)
  end

  # Returns the Create Password label for the create account section.
  def create_password_label()
    # unit_test_no_generate: create_password_label, label.className(create_ats_regex_string("ats-createpwdlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(label.className(create_ats_regex_string("ats-createpwdlbl")), __method__)
  end

  # Returns the Confirm Password label for the create account section.
  def create_verify_password_label()
    # unit_test_no_generate: create_verify_password_label, label.className(create_ats_regex_string("ats-createverifypwdlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(label.className(create_ats_regex_string("ats-createverifypwdlbl")), __method__)
  end

  # Returns the opt in checkbox for the create account section.
  def create_opt_in_checkbox_label()
    # unit_test_no_generate: create_opt_in_checkbox_label, label.className(create_ats_regex_string("ats-createoptinboxlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(label.className(create_ats_regex_string("ats-createoptinboxlbl")), __method__)
  end

  # Returns the email address field's error label for the create account section.
  def create_email_error_label()
    # unit_test_no_generate: create_email_error_label, span.className(create_ats_regex_string("ats-createemailerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-createemailerrorlbl")), __method__)
  end

  # Returns the close button for the email address field's error label for the create account section.
  def create_email_error_close_button()
    # unit_test_no_generate: create_email_error_close_button, span.className(create_ats_regex_string("ats-createemailerrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-createemailerrorlbl")).a, __method__)
  end

  # Returns the password field's error label for the create account section.
  def create_password_error_label()
    # unit_test_no_generate: create_password_error_label, span.className(create_ats_regex_string("ats-createpwderrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-createpwderrorlbl")), __method__)
  end

  # Returns the close button for password field's error label for the create account section.
  def create_password_error_close_button()
    # unit_test_no_generate: create_password_error_close_button, span.className(create_ats_regex_string("ats-createpwderrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-createpwderrorlbl")).a, __method__)
  end

  # Returns the confirm password field's error label for the create account section.
  def verify_password_error_label()
    # unit_test_no_generate: verify_password_error_label, span.className(create_ats_regex_string("ats-createverifypwderrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-createverifypwderrorlbl")), __method__)
  end

  # Returns the close button for the confirm password field's error label for the create account section.
  def verify_password_error_close_button()
    # unit_test_no_generate: verify_password_error_close_button, span.className(create_ats_regex_string("ats-createverifypwderrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-createverifypwderrorlbl")).a, __method__)
  end

  # Returns the label for prompting users to sign in to an existing account.
  def sign_in_now_label()
    # unit_test_no_generate: sign_in_now_label, h2.className(create_ats_regex_string("ats-signinnowlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h2.className(create_ats_regex_string("ats-signinnowlbl")), __method__)
  end

  # Returns the password rules section - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_rules_section_label
    # unit_test_no_generate: password_rules_section_label, div.className(create_ats_regex_string("ats-pwdrulessectionlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-pwdrulessectionlbl")),  __method__)
  end

  # Returns the password requirements label - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_requirements_label
    # unit_test_no_generate: password_requirements_label, h4.className(create_ats_regex_string("ats-pwdreqslbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h4.className(create_ats_regex_string("ats-pwdreqslbl")), __method__)
  end

  # Returns the Not the same as your e-mail rule label - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_not_email_label
    # unit_test_no_generate: password_not_email_label, dt.className(create_ats_regex_string("ats-pwdnotemaillbl"))
    $tracer.trace(__method__)
    return ToolTag.new(dt.className(create_ats_regex_string("ats-pwdnotemaillbl")), __method__)
  end

  # Returns the checkmark image when the e-mail rule is met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def valid_password_not_email_image
    # unit_test_no_generate: valid_password_not_email_image, dt.className(create_ats_regex_string("ats-pwdnotemaillbl")).img.className(create_ats_regex_string("ats-pwdvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dt.className(create_ats_regex_string("ats-pwdnotemaillbl")).img.className(create_ats_regex_string("ats-pwdvalidimg")), __method__)
  end

  # Returns the x image when the e-mail rule is not met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def invalid_password_not_email_image
    # unit_test_no_generate: invalid_password_not_email_image, dt.className(create_ats_regex_string("ats-pwdnotemaillbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dt.className(create_ats_regex_string("ats-pwdnotemaillbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg")), __method__)
  end

  # Returns the minimum length rule label - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_min_length_label
    # unit_test_no_generate: password_min_length_label, dt.className(create_ats_regex_string("ats-pwdminlenlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(dt.className(create_ats_regex_string("ats-pwdminlenlbl")), __method__)
  end

  # Returns the checkmark image when the minimum length rule is met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def valid_password_min_length_image
    # unit_test_no_generate: valid_password_min_length_image, dt.className(create_ats_regex_string("ats-pwdminlenlbl")).img.className(create_ats_regex_string("ats-pwdvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dt.className(create_ats_regex_string("ats-pwdminlenlbl")).img.className(create_ats_regex_string("ats-pwdvalidimg")), __method__)
  end

  # Returns the x image when the minimum length rule is not met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def invalid_password_min_length_image
    # unit_test_no_generate: invalid_password_min_length_image, dt.className(create_ats_regex_string("ats-pwdminlenlbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dt.className(create_ats_regex_string("ats-pwdminlenlbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg")), __method__)
  end

  # Returns the Contain 3 of the following label - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_contain_three_label
    # unit_test_no_generate: password_contain_three_label, dt.className(create_ats_regex_string("ats-pwdcontainthreelbl"))
    $tracer.trace(__method__)
    return ToolTag.new(dt.className(create_ats_regex_string("ats-pwdcontainthreelbl")), __method__)
  end

  # Returns the Number label - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_number_label
    # unit_test_no_generate: password_number_label, dd.className(create_ats_regex_string("ats-pwdnumlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwdnumlbl")), __method__)
  end

  # Returns the checkmark image when the number rule is met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def valid_password_number_image
    # unit_test_no_generate: valid_password_number_image, dd.className(create_ats_regex_string("ats-pwdnumlbl")).img.className(create_ats_regex_string("ats-pwdvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwdnumlbl")).img.className(create_ats_regex_string("ats-pwdvalidimg")), __method__)
  end

  # Returns the x image when the number rule is not met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def invalid_password_number_image
    # unit_test_no_generate: invalid_password_number_image,dd.className(create_ats_regex_string("ats-pwdnumlbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwdnumlbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg")), __method__)
  end

  # Returns the Uppercase label - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_uppercase_label
    # unit_test_no_generate: password_uppercase_label, dd.className(create_ats_regex_string("ats-pwducaselbl"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwducaselbl")), __method__)
  end

  # Returns the checkmark image when the uppercase rule is met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def valid_password_uppercase_image
    # unit_test_no_generate: valid_password_uppercase_image, dd.className(create_ats_regex_string("ats-pwducaselbl")).img.className(create_ats_regex_string("ats-pwdvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwducaselbl")).img.className(create_ats_regex_string("ats-pwdvalidimg")), __method__)
  end

  # Returns the x image when the uppercase rule is not met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def invalid_password_uppercase_image
    # unit_test_no_generate: invalid_password_uppercase_image, dd.className(create_ats_regex_string("ats-pwducaselbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwducaselbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg")), __method__)
  end

  # Returns the Lowercase label - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_lowercase_label
    # unit_test_no_generate: password_lowercase_label, dd.className(create_ats_regex_string("ats-pwdlcaselbl"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwdlcaselbl")), __method__)
  end

  # Returns the checkmark image when the lowercase rule is met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def valid_password_lowercase_image
    # unit_test_no_generate: valid_password_lowercase_image, dd.className(create_ats_regex_string("ats-pwdlcaselbl")).img.className(create_ats_regex_string("ats-pwdvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwdlcaselbl")).img.className(create_ats_regex_string("ats-pwdvalidimg")), __method__)
  end

  # Returns the x image when the lowercase rule is not met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def invalid_password_lowercase_image
    # unit_test_no_generate: invalid_password_lowercase_image, dd.className(create_ats_regex_string("ats-pwdlcaselbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwdlcaselbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg")), __method__)
  end

  # Returns the Special character label - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_special_character_label
    # unit_test_no_generate: password_special_character_label, dd.className(create_ats_regex_string("ats-pwdspecialcharlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwdspecialcharlbl")), __method__)
  end

  # Returns the checkmark image when the special character rule is met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def valid_password_special_char_image
    # unit_test_no_generate: valid_password_special_char_image, dd.className(create_ats_regex_string("ats-pwdspecialcharlbl")).img.className(create_ats_regex_string("ats-pwdvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwdspecialcharlbl")).img.className(create_ats_regex_string("ats-pwdvalidimg")), __method__)
  end

  # Returns the x image when the special character rule is not met - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def invalid_password_special_char_image
    # unit_test_no_generate: invalid_password_special_char_image, dd.className(create_ats_regex_string("ats-pwdspecialcharlbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg"))
    $tracer.trace(__method__)
    return ToolTag.new(dd.className(create_ats_regex_string("ats-pwdspecialcharlbl")).img.className(create_ats_regex_string("ats-pwdinvalidimg")), __method__)
  end

  # Returns the overall success message when an entered password meets all necessary requirements - this finder exists for both the Create Account section and Reset Password during the Forgot Password flow
  def password_complete_label
    # unit_test_no_generate: password_complete_label, h5.className(create_ats_regex_string("ats-pwdcompletelbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h5.className(create_ats_regex_string("ats-pwdcompletelbl")), __method__)
  end

end
