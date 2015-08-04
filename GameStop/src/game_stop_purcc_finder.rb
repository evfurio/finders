# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to PURCC application (long and short forms), Approved, Declined, and landing pages.
# The Edit Personal Information pop up was not made into a component as the same ats class names were used between the fields
# on the long and short forms and creating a component creates more finders unnecessarily.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopPURCCFinder

    # Returns the first name prompt label on the PURCC credit application long and short forms.
    def first_name_prompt_label
      # unit_test_no_generate: first_name_prompt_label, span.className(create_ats_regex_string("ats-fnamelbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-fnamelbl")), __method__)
    end

    # Returns middle name prompt label on the PURCC credit application long form.
    def middle_name_prompt_label
      # unit_test_no_generate: middle_name_prompt_label, span.className(create_ats_regex_string("ats-mnamelbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-mnamelbl")), __method__)
    end

    # Returns the last name prompt label on the PURCC credit application long form and short forms.
    def last_name_prompt_label
      # unit_test_no_generate: last_name_prompt_label, span.className(create_ats_regex_string("ats-lnamelbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-lnamelbl")), __method__)
    end

    # First (profile_first_name_field), middle (middle_name_field), and last name (profile_last_name_field) input fields are in Common/Profile/src directory in profile_personal_info_finder.rb
    # Birthday prompt label (birthday_prompt_label) is in Common/Profile/src directory in profile_personal_info_finder.rb

    # Returns the birthday input field on the PURCC credit application long form.
    def birthday_field
      # unit_test_no_generate: birthday_field, input.className(create_ats_regex_string("ats-bdayfield"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-bdayfield")), __method__)
    end

    # Returns the social security number prompt label on the PURCC credit application long and short forms.
    def ssn_prompt_label
      # unit_test_no_generate: ssn_prompt_label, span.className(create_ats_regex_string("ats-ssnlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-ssnlbl")), __method__)
    end

    # Returns the social security number input field on the PURCC credit application long and short forms.
    def ssn_field
      # unit_test_no_generate: ssn_field, input.className(create_ats_regex_string("ats-ssnfield"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-ssnfield")), __method__)
    end

    # Returns the social security number field's help icon on the PURCC credit application long and short forms.
    def ssn_help_link
      # unit_test_no_generate: ssn_help_link, a.className(create_ats_regex_string("ats-ssnhelplnk"))
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-ssnhelplnk")), __method__)
    end

    # Returns the email address prompt label on the PURCC credit application long form.
    def email_address_prompt_label
      # unit_test_no_generate: email_address_prompt_label, span.className(create_ats_regex_string("ats-emailaddrlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-emailaddrlbl")), __method__)
    end

    # Email address input field (email_address_field) is in Common/Profile/src directory in profile_account_info_finder.rb

    # Returns the Home Address Line 1 prompt label on the PURCC credit application long and short forms.
    def address_line1_prompt_label
      # unit_test_no_generate: address_line1_prompt_label, span.className(create_ats_regex_string("ats-addrline1lbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-addrline1lbl")), __method__)
    end

    # Returns the Home Address Line 1 input field on the PURCC credit application long form and short forms.
    def address_line1_field
      # unit_test_no_generate: address_line1_field, input.className(create_ats_regex_string("ats-addrline1field"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-addrline1field")), __method__)
    end

    # Returns the Home Address Line 2 prompt label on the PURCC credit application long and short forms.
    def address_line2_prompt_label
      # unit_test_no_generate: address_line2_prompt_label, span.className(create_ats_regex_string("ats-addrline2lbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-addrline2lbl")), __method__)
    end

    # Returns the Home Address Line 2 input field on the PURCC credit application long and short forms.
    def address_line2_field
      # unit_test_no_generate: address_line2_field, input.className(create_ats_regex_string("ats-addrline2field"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-addrline2field")), __method__)
    end

    # Returns the City prompt label on the PURCC credit application long and short forms.
    def city_prompt_label
      # unit_test_no_generate: city_prompt_label, span.className(create_ats_regex_string("ats-citylbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-citylbl")), __method__)
    end

    # Returns the City input field on the PURCC credit application long and short forms.
    # Same ats class name is used for the finder city field in profile_components.
    def city_field
      # unit_test_no_generate: city_field, input.className(create_ats_regex_string("ats-cityfield"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-cityfield")), __method__)
    end

    # Returns the State prompt label on the PURCC credit application long and short forms.
    def state_prompt_label
      # unit_test_no_generate: state_prompt_label, span.className(create_ats_regex_string("ats-statelbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-statelbl")), __method__)
    end

    # Returns the State drop down field on the PURCC credit application long and short forms.
    # Same ats class names is used for the finder state_province_selector in profile_componenets.
    def state_selector
      # unit_test_no_generate: state_selector, select.className(create_ats_regex_string("ats-usstate"));GameStopSelector
      $tracer.trace(__method__)
      return GameStopSelector.new(ToolTag.new(get_self.select.className(create_ats_regex_string("ats-usstate")), __method__), self)
    end

    # Returns the Zip Code prompt label on the PURCC credit application long and short forms.
    def zip_postal_code_prompt_label
      # unit_test_no_generate: zip_postal_code_prompt_label, span.className(create_ats_regex_string("ats-postalcodelbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-postalcodelbl")), __method__)
    end

    # Returns the Zip Code input field on the PURCC credit application long and short forms. This is the same name as a finder in profile_components.
    def zip_postal_code_field
      # unit_test_no_generate: zip_postal_code_field, input.className(create_ats_regex_string("ats-postalcodefield"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-postalcodefield")), __method__)
    end

    # Returns the Home Phone prompt label on the PURCC credit application long and short forms.
    def home_phone_prompt_label
      # unit_test_no_generate: home_phone_prompt_label, span.className(create_ats_regex_string("ats-homephonelbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-homephonelbl")), __method__)
    end

    # Returns the Home Phone Number field on the PURCC credit application long and short forms.
    def home_phone_number_field
      # unit_test_no_generate: home_phone_number_field, input.className(create_ats_regex_string("ats-homephonefield"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-homephonefield")), __method__)
    end

    # Returns the Work Phone prompt label on the PURCC credit application long and short forms.
    def work_phone_prompt_label
      # unit_test_no_generate: work_phone_prompt_label, span.className(create_ats_regex_string("ats-workphonelbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-workphonelbl")), __method__)
    end

    # Returns the Work Phone input field on the PURCC credit application long and short forms.
    def work_phone_number_field
      # unit_test_no_generate: work_phone_number_field, input.className(create_ats_regex_string("ats-workphonefield"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-workphonefield")), __method__)
    end

    # Returns the annual income prompt label on the PURCC credit application long and short forms.
    def annual_income_prompt_label
      # unit_test_no_generate: annual_income_prompt_label, span.className(create_ats_regex_string("ats-annualincomelbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-annualincomelbl")), __method__)
    end

    # Returns the Gross Annual Income input file on the PURCC credit application long and short forms.
    def annual_income_field
      # unit_test_no_generate: annual_income_field, input.className(create_ats_regex_string("ats-annualincomefield"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-annualincomefield")), __method__)
    end

    # Returns the ? link for the Gross Annual Income field on the PURCC credit application long and short forms.
    def income_help_link
      # unit_test_no_generate: income_help_link, a.className(create_ats_regex_string("ats-incomehelplnk"))
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-incomehelplnk")), __method__)
    end

    # Returns the text label for income disclosures on the PURCC credit application long and short forms.
    def income_disclosure_label
      # unit_test_no_generate: income_disclosure_label, get_self.p.className(create_ats_regex_string("ats-incomedisclosurelbl"))
      $tracer.trace(__method__)
      return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-incomedisclosurelbl")), __method__)
    end

    # Returns the text label for communication via text message or telephone on the PURCC credit application long and short forms.
    def communications_label
      # unit_test_no_generate: communications_label, get_self.p.className(create_ats_regex_string("ats-commlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(get_self.p.className(create_ats_regex_string("ats-commlbl")), __method__)
    end

    # Returns the heading for the Important Information About Opening an Account section on the PURCC credit application short form.
    def disclaimers_header_label
      # unit_test_no_generate: disclaimers_header_label, h2.className(create_ats_regex_string("ats-disclaimershdrlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(h2.className(create_ats_regex_string("ats-disclaimershdrlbl")), __method__)
    end

    # Returns the text label for the section IMPORTANT INFORMATION ABOUT OPENING AN ACCOUNT on the PURCC credit application long form.
    # No ats class name on the short form.
    def disclaimers_label
      # unit_test_no_generate: disclaimers_label, div.className(create_ats_regex_string("ats-disclaimerslbl"))
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-disclaimerslbl")), __method__)
    end

    # Returns the heading for the Electronic Consent section on the PURCC credit application short form.
    def consent_header_label
      # unit_test_no_generate: consent_header_label, h2.className(create_ats_regex_string("ats-consenthdrlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(h2.className(create_ats_regex_string("ats-consenthdrlbl")), __method__)
    end

    # Returns the text label for the section ELECTRONIC CONSENT on the PURCC credit application long form.
    # No ats class name on the short form.
    def consent_label
      # unit_test_no_generate: consent_label, div.className(create_ats_regex_string("ats-consentlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-consentlbl")), __method__)
    end

    # Returns the information from ADS seen in the Electronic Consent section on the PURCC credit application long and short forms.
    def consent_panel
      # unit_test_no_generate: consent_panel, div.className(create_ats_regex_string("ats-consentpanel"))
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-consentpanel")), __method__)
    end

    # Returns the consent checkbox on the PURCC credit application long and short forms.
    def consent_checkbox
      # unit_test_no_generate: consent_checkbox, input.className(create_ats_regex_string("ats-consentbox"))
      $tracer.trace(__method__)
      return ToolTag.new(input.className(create_ats_regex_string("ats-consentbox")), __method__)
    end

    # Returns the text label for the consent checkbox on the PURCC credit application long and short forms.
    def consent_checkbox_label
      # unit_test_no_generate: consent_checkbox_label, label.className(create_ats_regex_string("ats-consentboxlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(label.className(create_ats_regex_string("ats-consentboxlbl")), __method__)
    end

    # Returns the No Thanks link on the PURCC credit application long and short forms. This finder is also on all the landing pages.
    def no_thanks_link
      # unit_test_no_generate: no_thanks_link, a.className(create_ats_regex_string("ats-nothnkslnk"))
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-nothnkslnk")), __method__)
    end

    # Submit button (submit_button) is in Common/Profile/src directory in profile_account_info_finder.rb

    # Returns the error message when multiple input fields trigger an error on the PURCC credit application long and short forms.
    def purcc_error_label
      # unit_test_no_generate: purcc_error_label, span.className(create_ats_regex_string("ats-purccerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-purccerrorlbl")), __method__)
    end

    # Returns the error message when the consent checkbox isn't checked on the PURCC credit application long and short forms.
    def consent_error_label
      # unit_test_no_generate: consent_error_label, span.className(create_ats_regex_string("ats-consenterrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-consenterrorlbl")), __method__)
    end

    # First name error label (first_name_error_label), last name error label (last_name_error_label), first name error close button (first_name_error_close_button),
    # last name error close button (last_name_error_close_button) are in Common/Profile/src directory in profile_personal_info_finder.rb

    # Returns the error message for the Date of Birth field on the PURCC credit application long and short forms.
    def birthday_error_label
      # unit_test_no_generate: birthday_error_label, span.className(create_ats_regex_string("ats-bdayerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-bdayerrorlbl")), __method__)
    end

    # Returns the close button for the Date of Birth error message on the PURCC credit application long and short forms.
    def birthday_error_close_button
      # unit_test_no_generate: birthday_error_close_button, span.className(create_ats_regex_string("ats-bdayerrorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-bdayerrorlbl")).a, __method__)
    end

    # Returns the error message for the Social Security Number field on the PURCC credit application long and short forms.
    def ssn_error_label
      # unit_test_no_generate: ssn_error_label, span.className(create_ats_regex_string("ats-ssnerrorlbl"))
    $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-ssnerrorlbl")), __method__)
    end

    # Returns the close button for the Social Security Number error message on the PURCC credit application for long and short forms.
    def ssn_error_close_button
      # unit_test_no_generate: ssn_error_close_button, span.className(create_ats_regex_string("ats-ssnerrorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-ssnerrorlbl")).a, __method__)
    end

    # Returns the error message for the Gross Annual Income field on the PURCC credit application long and short forms.
    def annual_income_error_label
      # unit_test_no_generate: annual_income_error_label, span.className(create_ats_regex_string("ats-annualincomeerrorlbl"))
    $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-annualincomeerrorlbl")), __method__)
    end

    # Returns the close button for the Gross Annual Income error message on the PURCC credit application for long and short forms.
    def income_error_close_button
      # unit_test_no_generate: income_error_close_button, span.className(create_ats_regex_string("ats-annualincomeerrorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-annualincomeerrorlbl")).a, __method__)
    end

    # Returns the error message for the Email Address field on the PURCC credit application long form.
    def email_address_error_label
      # unit_test_no_generate: email_address_error_label, span.className(create_ats_regex_string("ats-emailaddrerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-emailaddrerrorlbl")), __method__)
    end

    # Returns the close button for the Email Address error message on the PURCC credit application long form.
    def email_error_close_button
      # unit_test_no_generate: email_error_close_button, span.className(create_ats_regex_string("ats-emailaddrerrorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-emailaddrerrorlbl")).a, __method__)
    end

    # Returns the error message for the Home Address Line 1 field on the PURCC credit application long form.
    def address_line1_error_label
      # unit_test_no_generate: address_line1_error_label, span.className(create_ats_regex_string("ats-addrline1errorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-addrline1errorlbl")), __method__)
    end

    # Returns the close button for the Home Address Line 1 error message on the PURCC credit application long form.
    def address_line1_error_close_button
      # unit_test_no_generate: address_line1_error_close_button, span.className(create_ats_regex_string("ats-addrline1errorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-addrline1errorlbl")).a, __method__)
    end

    # Returns the error message for the City field on the PURCC credit application long form.
    def city_error_label
      # unit_test_no_generate: city_error_label, span.className(create_ats_regex_string("ats-cityerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-cityerrorlbl")), __method__)
    end

    # Returns the close button for the City error message on the PURCC credit application long form.
    def city_error_close_button
      # unit_test_no_generate: city_error_close_button, span.className(create_ats_regex_string("ats-cityerrorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-cityerrorlbl")).a, __method__)
    end

    # Returns the error message for the State drop down field on the PURCC credit application long form.
    def state_error_label
      # unit_test_no_generate: state_error_label, div.className(create_ats_regex_string("ats-stateerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-stateerrorlbl")), __method__)
    end

    # Returns the close button for the State error message on the PURCC credit application long form.
    def state_error_close_button
      # unit_test_no_generate: state_error_close_button, div.className(create_ats_regex_string("ats-stateerrorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-stateerrorlbl")).a, __method__)
    end

    # Returns the error message for the Zip Code field on the PURCC credit application long form.
    def zip_postal_code_error_label
      # unit_test_no_generate: zip_postal_code_error_label, span.className(create_ats_regex_string("ats-postalcodeerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-postalcodeerrorlbl")), __method__)
    end

    # Returns the close button for the Zip Code error message on the PURCC credit application long form.
    def zip_error_close_button
      # unit_test_no_generate: zip_error_close_button, span.className(create_ats_regex_string("ats-postalcodeerrorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-postalcodeerrorlbl")).a, __method__)
    end

    # Returns the error message for the Home Phone field on the PURCC credit application long form.
    def home_phone_error_label
      # unit_test_no_generate: home_phone_error_label, span.className(create_ats_regex_string("ats-homephoneerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-homephoneerrorlbl")), __method__)
    end

    # Returns the close button for the Home Phone error message on the PURCC credit application long form.
    def home_phone_error_close_button
      # unit_test_no_generate: home_phone_error_close_button, span.className(create_ats_regex_string("ats-homephoneerrorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-homephoneerrorlbl")).a, __method__)
    end

    # Returns the error message for the Work Phone field on the PURCC credit application long form.
    def work_phone_error_label
      # unit_test_no_generate: work_phone_error_label, span.className(create_ats_regex_string("ats-workphoneerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-workphoneerrorlbl")), __method__)
    end

    # Returns the close button for the Work Phone error message on the PURCC credit application long form.
    def work_phone_error_close_button
      # unit_test_no_generate: work_phone_error_close_button, span.className(create_ats_regex_string("ats-workphoneerrorlbl")).a
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-workphoneerrorlbl")).a, __method__)
    end

    # Returns the pre-screen banner on the PURCC credit application short form.
    def prescreen_header_label
      # unit_test_no_generate: prescreen_header_label, img.className(create_ats_regex_string("ats-prescreenhdrlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(img.className(create_ats_regex_string("ats-prescreenhdrlbl")), __method__)
    end

    # Returns the Personal Information label on the PURCC credit application short form.
    def personal_info_header_label
      # unit_test_no_generate: personal_info_header_label, h2.className(create_ats_regex_string("ats-personalinfohdrlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(h2.className(create_ats_regex_string("ats-personalinfohdrlbl")), __method__)
    end

    # Returns the saved personal information for a pre-screened user on the PURCC credit application short form.
    # PURCC added to finder name due to personal_info_label existing in profile_personal_info_finder and this one is a div rather than an h2 element.
    def purcc_personal_info_label
      # unit_test_no_generate: purcc_personal_info_label, div.className(create_ats_regex_string("ats-personalinfolbl"))
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-personalinfolbl")), __method__)
    end

    def purcc_personal_info_div
      # unit_test_no_generate: purcc_personal_info_label, div.className(create_ats_regex_string("ats-personalinfolbl"))
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-popuppersonalinfopanel")), __method__)
    end

    # Returns the Edit Personal Information link for a pre-screened user on the PURCC credit application short form.
    def edit_personal_info_link
      # unit_test_no_generate: edit_personal_info_link, a.className(create_ats_regex_string("ats-editpersonalinfolnk"))
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-editpersonalinfolnk")), __method__)
    end

    # Returns the Update Info label for a pre-screened user with missing saved personal info on the PURCC credit application short form.
    def update_info_label
      # unit_test_no_generate: update_info_label, span.className(create_ats_regex_string("ats-updateinfolbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-updateinfolbl")), __method__)
    end

    # Returns the close button for the Update Info label on the PURCC credit application short form.
    def update_label_close_button
      # unit_test_no_generate: update_label_close_button, a.className(create_ats_regex_string("ats-updtlblclosebtn"))
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-updtlblclosebtn")), __method__)
    end

    # SHORT FORM POPUP FINDERS

    # Returns the header label for the Edit Personal Information popup on the PURCC credit application short form.
    def edit_personal_info_label
      # unit_test_no_generate: edit_personal_info_label, h2.className(create_ats_regex_string("ats-editpersonalinfolbl"))
      $tracer.trace(__method__)
      return ToolTag.new(h2.className(create_ats_regex_string("ats-editpersonalinfolbl")), __method__)
    end

    # Returns the Cancel link for the Edit Personal Information popup on the PURCC credit application short form.
    def edit_cancel_button
      # unit_test_no_generate: edit_cancel_button, a.className(create_ats_regex_string("ats-editcancelbtn"))
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-editcancelbtn")), __method__)
    end

    # Returns the Submit button for the Edit Personal Information popup on the PURCC credit application short form.
    def edit_submit_button
      # unit_test_no_generate: edit_submit_button, button.className(create_ats_regex_string("ats-editsubmitbtn"))
      $tracer.trace(__method__)
      return ToolTag.new(button.className(create_ats_regex_string("ats-editsubmitbtn")), __method__)
    end

    # Returns the multiple error messages (at the top) for the Edit Personal Information popup on the PURCC credit application short form.
    def edit_info_error_label
      # unit_test_no_generate: edit_info_error_label, div.className(create_ats_regex_string("ats-editinfoerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-editinfoerrorlbl")), __method__)
    end

    # Returns the first name truncation message for the Edit Personal Information popup on the PURCC credit application short form.
    def fname_length_error_label
      # unit_test_no_generate: fname_length_error_label, span.className(create_ats_regex_string("ats-truncfnameerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-truncfnameerrorlbl")), __method__)
    end

    # Returns the last name truncation message for the Edit Personal Information popup on the PURCC credit application short form.
    def lname_length_error_label
      # unit_test_no_generate: lname_length_error_label, span.className(create_ats_regex_string("ats-trunclnameerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-trunclnameerrorlbl")), __method__)
    end

    # Returns the address line 1 truncation message for the Edit Personal Information popup on the PURCC credit application short form.
    def addrline1_length_error_label
      # unit_test_no_generate: addrline1_length_error_label, span.className(create_ats_regex_string("ats-truncaddrline1errorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-truncaddrline1errorlbl")), __method__)
    end

    # Returns the address line 2 truncation message for the Edit Personal Information popup on the PURCC credit application short form.
    def addrline2_length_error_label
      # unit_test_no_generate: addrline2_length_error_label, span.className(create_ats_regex_string("ats-truncaddrline2errorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-truncaddrline2errorlbl")), __method__)
    end

    # Returns the city truncation message for the Edit Personal Information popup on the PURCC credit application short form.
    def city_length_error_label
      # unit_test_no_generate: city_length_error_label, span.className(create_ats_regex_string("ats-trunccityerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-trunccityerrorlbl")), __method__)
    end

    # Returns the postal code truncation message for the Edit Personal Information popup on the PURCC credit application short form.
    def postal_code_length_error_label
      # unit_test_no_generate: postal_code_length_error_label, span.className(create_ats_regex_string("ats-truncpostalcodeerrorlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-truncpostalcodeerrorlbl")), __method__)
    end

    ## APPROVED PAGE

    # Returns the approved credit limit amount on the Approved PURCC page.
    def credit_limit_label
      # unit_test_no_generate: credit_limit_label, span.className(create_ats_regex_string("ats-creditlimitlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(span.className(create_ats_regex_string("ats-creditlimitlbl")), __method__)
    end

    # Returns the link to Payment Methods page on the Approved PURCC page.
    def payment_methods_link
      # unit_test_no_generate: payment_methods_link, a.className(create_ats_regex_string("ats-paymentmethodslnk"))
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-paymentmethodslnk")), __method__)
    end

    # Returns the Continue Shopping button on the Approved and Declined PURCC page.
    def purcc_continue_button
      # unit_test_no_generate: purcc_continue_button, button.className(create_ats_regex_string("ats-continuebtn"))
      $tracer.trace(__method__)
      return ToolTag.new(button.className(create_ats_regex_string("ats-continuebtn")), __method__)
    end

    ## GENERIC LANDING PAGE

    # Returns the page heading for the generic landing page.
    def join_today_header_label
      # unit_test_no_generate: join_today_header_label, h1.className(create_ats_regex_string("ats-jointodayhdrlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(h1.className(create_ats_regex_string("ats-jointodayhdrlbl")), __method__)
    end

    # Returns the Apply Now button on the generic landing page.
    def apply_now_button
      # unit_test_no_generate: apply_now_button, button.className(create_ats_regex_string("ats-applynowbtn"))
      $tracer.trace(__method__)
      return ToolTag.new(button.className(create_ats_regex_string("ats-applynowbtn")), __method__)
    end

    ## NON PUR LANDING PAGE

    # Returns the page heading on the non pur landing page.
    def join_pur_header_label
      # unit_test_no_generate: join_pur_header_label, h1.className(create_ats_regex_string("ats-joinpurhdrlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(h1.className(create_ats_regex_string("ats-joinpurhdrlbl")), __method__)
    end

    # Returns the Learn more link on the non pur landing page.
    def learn_more_link
      # unit_test_no_generate: learn_more_link, a.className(create_ats_regex_string("ats-learnmorelnk"))
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-learnmorelnk")), __method__)
    end

    # Returns the Find a store button on the non pur landing page. Added purcc since there is a hops_find_store_button finder.
    def purcc_find_store_button
      # unit_test_no_generate: purcc_find_store_button, button.className(create_ats_regex_string("ats-findstorebtn"))
      $tracer.trace(__method__)
      return ToolTag.new(button.className(create_ats_regex_string("ats-findstorebtn")), __method__)
    end

    ## PRE-APPROVED LANDING PAGE

    # Returns the page heading on the pre-approved landing page.
    def preapproved_header_label
      # unit_test_no_generate: preapproved_header_label, h1.className(create_ats_regex_string("ats-preapprovedhdrlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(h1.className(create_ats_regex_string("ats-preapprovedhdrlbl")), __method__)
    end

    # Returns the Accept Now button on the pre-approved landing page.
    def accept_now_button
      # unit_test_no_generate: accept_now_button, button.className(create_ats_regex_string("ats-acceptnowbtn"))
      $tracer.trace(__method__)
      return ToolTag.new(button.className(create_ats_regex_string("ats-acceptnowbtn")), __method__)
    end

    # Returns the link for the PURCC terms and conditions (text at the bottom of the page) on the pre-approved landing page.
    def purcc_tandc_link
      # unit_test_no_generate: purcc_tandc_link, a.className(create_ats_regex_string("ats-purcctandclnk"))
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-purcctandclnk")), __method__)
    end

    ## MANAGE ACCOUNT LANDING PAGE

    # Returns page heading on the manage account landing page.
    def manage_account_header_label
      # unit_test_no_generate: manage_account_header_label, h1.className(create_ats_regex_string("ats-manageaccthdrlbl"))
      $tracer.trace(__method__)
      return ToolTag.new(h1.className(create_ats_regex_string("ats-manageaccthdrlbl")), __method__)
    end

    # Returns Manage Your Account button on the manage account landing page.
    def manage_account_button
      # unit_test_no_generate: manage_account_button, button.className(create_ats_regex_string("ats-manageacctbtn"))
      $tracer.trace(__method__)
      return ToolTag.new(button.className(create_ats_regex_string("ats-manageacctbtn")), __method__)
    end
end

