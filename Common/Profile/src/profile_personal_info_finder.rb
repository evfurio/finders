module ProfilePersonalInfoFinder


  # Returns the Personal Info page title
  def personal_info_label()
    # unit_test_no_generate: personal_info_label, h2.className(create_ats_regex_string("ats-personalinfolbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h2.className(create_ats_regex_string("ats-personalinfolbl")), __method__)
  end

  # Returns the Name prompt text
  def name_prompt_label()
    # unit_test_no_generate: name_prompt_label, h3.className(create_ats_regex_string("ats-namepromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-namepromptlbl")), __method__)
  end

  # Returns first name input field on the Personal Info page - existing finder not part of the component
  def profile_first_name_field
    # unit_test_no_generate: first_name_field, input.className(create_ats_regex_string("ats-fnamefield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-fnamefield")), __method__)
  end

  # Returns first name error message on the Personal Info page for PUR activated users only - existing finder not part of the component
  def first_name_error_label
    # unit_test_no_generate: first_name_error_label, span.className(create_ats_regex_string("ats-fnameerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-fnameerrorlbl")), __method__)
  end

  # Returns first name error message close button on the Personal Info page for PUR activated users only - existing finder not part of the component
  def first_name_error_close_button
    # unit_test_no_generate: first_name_error_close_button, span.className(create_ats_regex_string("ats-fnameerrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-fnameerrorlbl")).a, __method__)
  end

  # Returns middle name input field on the Personal Info page
  def middle_name_field
    # unit_test_no_generate: middle_name_field, input.className(create_ats_regex_string("ats-mnamefield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-mnamefield")),__method__)
  end

  # Returns last name input field on the Personal Info page - existing finder not part of the component
  def profile_last_name_field
    # unit_test_no_generate: last_name_field, input.className(create_ats_regex_string("ats-lnamefield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-lnamefield")), __method__)
  end

  # Returns last name error message on the Personal Info page for PUR activated users only - existing finder not part of the component
  def last_name_error_label
    # unit_test_no_generate: last_name_error_label, span.className(create_ats_regex_string("ats-lnameerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-lnameerrorlbl")), __method__)
  end

  # Returns last name error message close button on the Personal Info page for PUR activated users only - existing finder not part of the component
  def last_name_error_close_button
    # unit_test_no_generate: last_name_error_close_button, span.className(create_ats_regex_string("ats-lnameerrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-lnameerrorlbl")).a, __method__)
  end

  # Returns text prompt for reviewer input field on the Personal Info page
  def reviewer_prompt_label
    # unit_test_no_generate: reviewer_prompt_label, h3.className(create_ats_regex_string("ats-reviewerpromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-reviewerpromptlbl")), __method__)
  end

  # Returns reviewer input field on the Personal Info page
  def reviewer_field
    # unit_test_no_generate: reviewer_field, input.className(create_ats_regex_string("ats-reviewerfield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-reviewerfield")), __method__)
  end

  # Returns text prompt for reviewer's use on the Personal Info page
  def reviewer_prompt_description_label
    # unit_test_no_generate: reviewer_prompt_description_label, span.className(create_ats_regex_string("ats-reviewerdesclbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-reviewerdesclbl")), __method__)
  end

  # Returns text prompt for username on the Personal Info page
  def username_prompt_label
    # unit_test_no_generate: username_prompt_label, h3.className(create_ats_regex_string("ats-usernamepromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-usernamepromptlbl")), __method__)
  end

  # Returns the edit button for the username
  def username_edit_button
    # unit_test_no_generate: username_edit_button, a.className(create_ats_regex_string("ats-usernameeditbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-usernameeditbtn")), __method__)
  end

  # Returns the saved username label
  def username_label
    # unit_test_no_generate: username_label, span.className(create_ats_regex_string("ats-emailaddrlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-emailaddrlbl")), __method__)
  end

  # Returns text prompt for password on the Personal Info page
  def password_prompt_label
    # unit_test_no_generate: password_prompt_label, h3.className(create_ats_regex_string("ats-pwdpromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-pwdpromptlbl")), __method__)
  end

  # Returns the edit button for the password
  def password_edit_button
    # unit_test_no_generate: password_edit_button, a.className(create_ats_regex_string("ats-pwdeditbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-pwdeditbtn")), __method__)
  end

  # Returns the saved password value label
  def password_label
    # unit_test_no_generate: password_label, span.className(create_ats_regex_string("ats-pwdlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-pwdlbl")), __method__)
  end

  # Returns contact email input field on the Personal Info page
  def contact_email_prompt_label
    # unit_test_no_generate: contact_email_prompt_label, h3.className(create_ats_regex_string("ats-contactemailpromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-contactemailpromptlbl")), __method__)
  end

  # Returns contact email input field on the Personal Info page
  def contact_email_field
    # unit_test_no_generate: contact_email_field, input.className(create_ats_regex_string("ats-contactfield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-contactfield")), __method__)
  end

  # Returns the contact email error label on the Personal Info page
  def contact_email_error_label
    # unit_test_no_generate: contact_email_error_label, span.className(create_ats_regex_string("ats-contactemailerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-contactemailerrorlbl")), __method__)
  end

  # Returns the contact email error label close button on the Personal Info page
  def contact_email_error_close_button
    # unit_test_no_generate: contact_email_error_close_button, span.className(create_ats_regex_string("ats-contactemailerrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-contactemailerrorlbl")).a, __method__)
  end

  # Returns text prompt for primary contact phone field on the Personal Info page
  def phone_prompt_label
    # unit_test_no_generate: phone_prompt_label, h3.className(create_ats_regex_string("ats-phonepromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-phonepromptlbl")), __method__)
  end

  # Returns primary contact phone field on the Personal Info page
  def contact_primary_phone_field
    # unit_test_no_generate: contact_primary_phone_field, input.className(create_ats_regex_string("ats-primaryphonefield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-primaryphonefield")), __method__)
  end

  # Returns primary contact phone field's error message on the Personal Info page for PUR activated users only
  def phone_error_label
    # unit_test_no_generate: phone_error_label, span.className(create_ats_regex_string("ats-phoneerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-phoneerrorlbl")), __method__)
  end

  # Returns primary contact phone field's error message close button on the Personal Info page for PUR activated users only
  def phone_error_close_button
    # unit_test_no_generate: phone_error_close_button, span.className(create_ats_regex_string("ats-phoneerrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-phoneerrorlbl")).a, __method__)
  end

  # Returns text prompt for security question on the Personal Info page for PUR activated users only
  # This finder is only for the read only section of the code.
  # It does also exist when you edit the saved security question and answer, but there is no finder for the heading then.
  def security_question_prompt_label
    # unit_test_no_generate: security_question_prompt_label, section.className(create_ats_regex_string("ats-inputsecuritypanel")).div.className(create_ats_regex_string("readonly")).h3.className(create_ats_regex_string("ats-securityquestionpromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(section.className(create_ats_regex_string("ats-inputsecuritypanel")).div.className(create_ats_regex_string("readonly")).h3.className(create_ats_regex_string("ats-securityquestionpromptlbl")), __method__)
  end

  # Returns the read only label for a saved security question
  def security_question_label
    # unit_test_no_generate: security_question_label, span.className(create_ats_regex_string("ats-securityquestionlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-securityquestionlbl")), __method__)
  end

  # Returns the heading for the security question's answer
  def security_answer_prompt_label
    # unit_test_no_generate: security_answer_prompt_label, h3.className(create_ats_regex_string("ats-securityanswerpromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-securityanswerpromptlbl")), __method__)
  end

  # Returns the masked read only label for a saved answer for the security question
  def security_answer_label
    # unit_test_no_generate: security_answer_label, span.className(create_ats_regex_string("ats-securityanswerlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-securityanswerlbl")), __method__)
  end

  # Returns the edit link for modifying the saved security question and answer
  def security_edit_link
    # unit_test_no_generate: security_edit_link, a.className(create_ats_regex_string("ats-securityeditlnk"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-securityeditlnk")), __method__)
  end

  # Returns the cancel link when editing a saved security question and answer
  def security_cancel_link
    # unit_test_no_generate: security_cancel_link, a.className(create_ats_regex_string("ats-securitycancellnk"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-securitycancellnk")), __method__)
  end

  ##SECURITY QUESTION AND ANSWER FINDERS ARE SAME AS THE PUR ONES

  # Returns the text prompt for birth month input field on the Personal Info page
  def birthday_prompt_label
    # unit_test_no_generate: birthday_prompt_label, h3.className(create_ats_regex_string("ats-birthdaypromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-birthdaypromptlbl")), __method__)
  end

  # Returns the birth month input field on the Personal Info page
  def birth_month_selector
    # unit_test_no_generate: birth_month_selector, get_self.select.className(create_ats_regex_string("ats-monthselector")); CommonSelector
    $tracer.trace(__method__)
    tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-monthselector")), __method__)
    return CommonSelector.new(tag)
  end

  # Returns the birth day input field on the Personal Info page
  def birth_day_selector
    # unit_test_no_generate: birth_day_selector, get_self.select.className(create_ats_regex_string("ats-dayselector")); CommonSelector
    $tracer.trace(__method__)
    tag = ToolTag.new(get_self.select.className(create_ats_regex_string("ats-dayselector")), __method__)
    return CommonSelector.new(tag)
  end

  # Returns the birthday error message on the Personal Info page
  def birthday_error_label
    # unit_test_no_generate: birthday_error_label, div.className(create_ats_regex_string("ats-birthdayerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-birthdayerrorlbl")), __method__)
  end

  # Returns the text prompt for gender on the Personal Info page
  def gender_prompt_label
    # unit_test_no_generate: gender_prompt_label, h3.className(create_ats_regex_string("ats-genderpromptlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-genderpromptlbl")), __method__)
  end

  # Returns the gender option radio buttons
  def gender_buttons
    # unit_test_no_generate: gender_buttons, div.className(create_ats_regex_string("ats-genderoptions")).input; CommonRadioButtons
    $tracer.trace(__method__)
    return CommonRadioButtons.new(ToolTag.new(div.className(create_ats_regex_string("ats-genderoptions")).input, __method__))
  end

  # Returns the save button on the Personal Info page
  def personal_info_save_button()
    # unit_test_no_generate: personal_info_save_button, button.className(create_ats_regex_string("ats-personalinfosavebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-personalinfosavebtn")), __method__)
  end

  # Returns the success message on the Personal Info page
  def personal_info_success_label()
    # unit_test_no_generate: personal_info_success_label, div.className(create_ats_regex_string("ats-personalinfosuccesslbl"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-personalinfosuccesslbl")), __method__)
  end

  # Returns the error message on the Personal Info page
  def personal_info_error_label()
    # unit_test_no_generate: personal_info_error_label, span.className(create_ats_regex_string("ats-personalinfoerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-personalinfoerrorlbl")), __method__)
  end

  ####UAS changes
  # Returns the read only label for first name on the Personal Info page
  def first_name_label
    # unit_test_no_generate: first_name_label, span.className(create_ats_regex_string("ats-fnamelbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-fnamelbl")), __method__)
  end

  # Returns the read only label for middle name on the Personal Info page
  def middle_name_label
    # unit_test_no_generate: middle_name_label, span.className(create_ats_regex_string("ats-mnamelbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-mnamelbl")), __method__)
  end

  # Returns the read only label for last name on the Personal Info page
  def last_name_label
    # unit_test_no_generate: last_name_label, span.className(create_ats_regex_string("ats-lnamelbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-lnamelbl")), __method__)
  end

  # Returns the read only label for reviewer name on the Personal Info page
  def reviewer_name_label
    # unit_test_no_generate: reviewer_name_label, span.className(create_ats_regex_string("ats-reviewerlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-reviewerlbl")), __method__)
  end

  # Returns the read only label for phone number on the Personal Info page
  def phone_label
    # unit_test_no_generate: phone_label, span.className(create_ats_regex_string("ats-phonelbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-phonelbl")), __method__)
  end

  # Returns the read only label for birth month on the Personal Info page
  def birth_month_label
    # unit_test_no_generate: birth_month_label, span.className(create_ats_regex_string("ats-birthmonthlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-birthmonthlbl")), __method__)
  end

  # Returns the read only label for birthday on the Personal Info page
  def birthday_label
    # unit_test_no_generate: birthday_label, span.className(create_ats_regex_string("ats-bdaylbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-bdaylbl")), __method__)
  end

  # Returns the read only label for gender on the Personal Info page
  def gender_label
    # unit_test_no_generate: gender_label, span.className(create_ats_regex_string("ats-genderlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-genderlbl")), __method__)
  end

  # Returns the save button for the Personal Details section on the Personal Info page
  def security_save_button
    # unit_test_no_generate: security_save_button, button.className(create_ats_regex_string("ats-securitysavebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-securitysavebtn")), __method__)
  end

  # Returns the security cancel button for the Personal Details section on the Personal Info page
  def security_cancel_button
    # unit_test_no_generate: security_cancel_button, button.className(create_ats_regex_string("ats-securitycancelbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-securitycancelbtn")), __method__)
  end

  # Returns the read only label for contact email address on the Personal Info page
  def contact_email_label
    # unit_test_no_generate: contact_email_label, span.className(create_ats_regex_string("ats-contactemaillbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-contactemaillbl")), __method__)
  end

  # Returns the edit link for the contact email address on the Personal Info page
  def contact_email_edit_link
    # unit_test_no_generate: contact_email_edit_link, a.className(create_ats_regex_string("ats-emaileditlnk"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-emaileditlnk")), __method__)
  end

  # Returns the save button for editing contact email address on the Personal Info page
  def contact_email_save_button
    # unit_test_no_generate: contact_email_save_button, button.className(create_ats_regex_string("ats-contactsavebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-contactsavebtn")), __method__)
  end

  # Returns the cancel button for editing contact email address on the Personal Info page
  def contact_email_cancel_button
    # unit_test_no_generate: contact_email_cancel_button, button.className(create_ats_regex_string("ats-contactcancelbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-contactcancelbtn")), __method__)
  end

  # Returns the save button for editing username email address on the Personal Info page
  def username_save_button
    # unit_test_no_generate: username_save_button, button.className(create_ats_regex_string("ats-usernamesavebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-usernamesavebtn")), __method__)
  end

  # Returns the cancel button for editing username email address on the Personal Info page
  def username_cancel_button
    # unit_test_no_generate: username_cancel_button, button.className(create_ats_regex_string("ats-usernamecancelbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-usernamecancelbtn")), __method__)
  end

  # Returns the save button for editing password on the Personal Info page
  def password_save_button
    # unit_test_no_generate: password_save_button, button.className(create_ats_regex_string("ats-pwdsavebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-pwdsavebtn")), __method__)
  end

  # Returns the cancel button for editing password on the Personal Info page
  def password_cancel_button
    # unit_test_no_generate: password_cancel_button, button.className(create_ats_regex_string("ats-pwdcancelbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-pwdcancelbtn")), __method__)
  end

  # Returns the cancel button for editing the Personal Details section on the Personal Info page
  def personal_details_cancel_button
    # unit_test_no_generate: personal_details_cancel_button, button.className(create_ats_regex_string("ats-personaldtlscancelbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-personaldtlscancelbtn")), __method__)
  end

  # Returns the heading label for the Personal Details section on the Personal Info page
  def personal_details_label
    # unit_test_no_generate: personal_details_label, h2.className(create_ats_regex_string("ats-personaldtlslbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h2.className(create_ats_regex_string("ats-personaldtlslbl")), __method__)
  end

  # Returns the edit link for the Personal Details section on the Personal Info page
  def personal_details_edit_link
    # unit_test_no_generate: personal_details_edit_link, a.className(create_ats_regex_string("ats-personaldtlseditlnk"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-personaldtlseditlnk")), __method__)
  end
  # FROM THE COMPONENT
  # Returns new username input field
  def username_field
    # unit_test_no_generate: username_field, input.className(create_ats_regex_string("ats-emailaddrfield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-emailaddrfield")), __method__)
  end

  # Returns new username input field's error message
  def new_username_error_label
    # unit_test_no_generate: new_username_error_label, span.className(create_ats_regex_string("ats-usernameerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-usernameerrorlbl")), __method__)
  end

  # Returns new username input field's error message close button
  def new_username_error_close_button
    # unit_test_no_generate: new_username_error_close_button, span.className(create_ats_regex_string("ats-usernameerrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-usernameerrorlbl")).a, __method__)
  end
  #password field is located elsewhere
  # Returns the password input field's error message
  def password_error_label
    # unit_test_no_generate: password_error_label, span.className(create_ats_regex_string("ats-pwderrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-pwderrorlbl")), __method__)
  end

  # Returns the password input field's error message close button
  def password_error_close_button
    # unit_test_no_generate: password_error_close_button, span.className(create_ats_regex_string("ats-pwderrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-pwderrorlbl")).a, __method__)
  end

  # Returns current password input field
  def current_password_field
    # unit_test_no_generate: current_password_field, input.className(create_ats_regex_string("ats-currentpwdfield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-currentpwdfield")), __method__)
  end

  # Returns current password input field's error message
  def current_password_error_label
    # unit_test_no_generate: current_password_error_label, span.className(create_ats_regex_string("ats-currentpwderrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-currentpwderrorlbl")), __method__)
  end

  # Returns current password input field's error message close button
  def current_password_error_close_button
    # unit_test_no_generate: current_password_error_close_button, span.className(create_ats_regex_string("ats-currentpwderrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-currentpwderrorlbl")).a, __method__)
  end
  # new password field is located elsewhere
  # Returns new password input field's error message
  def new_password_error_label
    # unit_test_no_generate: new_password_error_label, span.className(create_ats_regex_string("ats-newpwderrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-newpwderrorlbl")), __method__)
  end

  # Returns new password input field's error message close button
  def new_password_error_close_button
    # unit_test_no_generate: new_password_error_close_button, span.className(create_ats_regex_string("ats-newpwderrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-newpwderrorlbl")).a, __method__)
  end
  # RENAMED TO VERIFY TO NOT CONFLICT WITH CONFIRM IN FORGOT PASSWORD finder
  # Returns confirm new password input field
  def verify_new_password_field
    # unit_test_no_generate: verify_new_password_field, input.className(create_ats_regex_string("ats-verifypwdfield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-verifypwdfield")), __method__)
  end

  # Returns confirm new password input field's error message
  def confirm_password_error_label
    # unit_test_no_generate: confirm_password_error_label, span.className(create_ats_regex_string("ats-confirmpwderrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-confirmpwderrorlbl")), __method__)
  end

  # Returns confirm new password input field's error message close button
  def confirm_password_error_close_button
    # unit_test_no_generate: confirm_password_error_close_button, span.className(create_ats_regex_string("ats-confirmpwderrorlbl")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-confirmpwderrorlbl")).a, __method__)
  end

  # 2 Factor Authentication Modal Popup

  # Returns 2 factor authentication popup panel
  def popup_authentication_panel
    # unit_test_no_generate: popup_authentication_panel, div.className(create_ats_regex_string("ats-popupauthpanel"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-popupauthpanel")), __method__)
  end

  # Returns 2 factor authentication popup header label
  def authentication_header_label
    # unit_test_no_generate: authentication_header_label, h1.className(create_ats_regex_string("ats-authhdrlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h1.className(create_ats_regex_string("ats-authhdrlbl")), __method__)
  end

  # Returns 2 factor authentication popup close button
  def authentication_close_button
    # unit_test_no_generate: authentication_close_button, a.className(create_ats_regex_string("ats-authclosebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-authclosebtn")), __method__)
  end

  # Returns 2 factor authentication popup resend code link
  def resend_code_link
    # unit_test_no_generate: resend_code_link, a.className(create_ats_regex_string("ats-resendcodelnk"))
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-resendcodelnk")), __method__)
  end

  # Returns 2 factor authentication popup code input field
  def code_field
    # unit_test_no_generate: code_field, input.className(create_ats_regex_string("ats-codefield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-codefield")), __method__)
  end

  # Returns 2 factor authentication popup code name this device input field
  def device_name_field
    # unit_test_no_generate: device_name_field, input.className(create_ats_regex_string("ats-devicenamefield"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-devicenamefield")), __method__)
  end

  # Returns 2 factor authentication popup checkbox for remember this device/browser and save it to profile
  def remember_device_checkbox
    # unit_test_no_generate: remember_device_checkbox, input.className(create_ats_regex_string("ats-rememberdevicebox"))
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-rememberdevicebox")), __method__)
  end

  # Returns 2 factor authentication popup label for remember this device/browser and save it to profile checkbox
  def remember_device_label
    # unit_test_no_generate: remember_device_label, label.className(create_ats_regex_string("ats-rememberdevicelbl"))
    $tracer.trace(__method__)
    return ToolTag.new(label.className(create_ats_regex_string("ats-rememberdevicelbl")), __method__)
  end

  # Returns 2 factor authentication popup Submit button
  def authentication_save_button
    # unit_test_no_generate: authentication_save_button, button.className(create_ats_regex_string("ats-authsavebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-authsavebtn")), __method__)
  end

  # Returns 2 factor authentication popup Cancel button
  def authentication_cancel_button
    # unit_test_no_generate: authentication_cancel_button, button.className(create_ats_regex_string("ats-authcancelbtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-authcancelbtn")), __method__)
  end

  # Returns 2 factor authentication popup invalid error code error message
  def invalid_code_error_label
    # unit_test_no_generate: invalid_code_error_label, span.className(create_ats_regex_string("ats-invalidcodelbl"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-invalidcodelbl")), __method__)
  end

  # Returns 2 factor authentication popup code field error message
  def code_field_error_label
    # unit_test_no_generate: code_field_error_label, span.className(create_ats_regex_string("ats-codefielderror"))
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-codefielderror")), __method__)
  end

  # Returns 2 factor authentication popup code field error message close button
  def code_field_error_close_button
    # unit_test_no_generate: code_field_error_close_button, span.className(create_ats_regex_string("ats-codefielderror")).a
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-codefielderror")).a, __method__)
  end


end