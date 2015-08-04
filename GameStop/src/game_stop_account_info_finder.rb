# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#unit_test_no_generate: credit_card_link, a.id("/changeCreditCardLinkButton/")
#unit_test_no_generate: address_book_link, a.id("/shipAddressLinkButton/");;self
#unit_test_no_generate: about_me_link, a.id("/personalInfoLinkButton/")
#unit_test_no_generate: edge_card_link, a.id("/edgeCardLinkButton/")
#unit_test_no_generate: powerup_rewards_card_link, a.id("/powerUpRewardsCardLinkButton/")
#unit_test_no_generate: communication_preferences_link, a.id("/communicationPreferencesLinkButton/")
#unit_test_no_generate: change_login_link, a.id("/signLinkButton/")
#unit_test_no_generate: change_password_link, a.id("/changePasswordLinkButton/")
#unit_test_no_generate: merge_reward_accounts_link, a.id("/mergeAccountsLinkButton/")
#unit_test_no_generate: confirm_email_address_field, input.with("id.search(/(txtEmailAddressConfirm|ComfirmEmailText|txtConfirmEmailAddress$)/) != -1")
#unit_test_no_generate: cancel_button, img.id("/CancelImage/").parent("a")
#unit_test_no_generate: first_name_field, input.id("/textFirstName/")
#unit_test_no_generate: last_name_field, input.id("/textLastName/")
#unit_test_no_generate: address_1_field, input.id("/textAddressLine1/")
#unit_test_no_generate: address_2_field, input.id("/textAddressLine2/")
#unit_test_no_generate: city_field, input.id("/textCity/")
#unit_test_no_generate: state_province_selector, get_self.select.id("/ddlState/");GameStopSelector;self
#unit_test_no_generate: zip_postal_code_field, input.id("/textZip/")
#unit_test_no_generate: country_selector, get_self.select.id("/ddlCountry/");GameStopSelector;self
#unit_test_no_generate: phone_number_field, input.with("id.search(/(textPhoneNumberDaytime|txtPhoneNumber$)/) != -1")
#unit_test_no_generate: privacy_policy_message_label, span.id("/lblPrivacyPolicyMessage$/")
#unit_test_no_generate: first_name_required_label, span.id("/valFirstName$/")
#unit_test_no_generate: last_name_required_label, span.id("/valLastName$/")
#unit_test_no_generate: address_1_required_label, span.id("/valAddress$/")
#unit_test_no_generate: city_required_label, span.id("/valCity$/")
#unit_test_no_generate: postal_code_required_label, span.id("/valZip$/")
#unit_test_no_generate: postal_code_invalid_format_label, span.id("/valZipRegEx$/")
#unit_test_no_generate: state_required_label, span.id("/valState$/")
#unit_test_no_generate: phone_required_label, span.id("/PhoneRequiredValidator$/")
#unit_test_no_generate: phone_invalid_format_label, span.id("/valPhoneFormat$/")
#unit_test_no_generate: email_required_label, span.id("/rfvEmailAddress$/")
#unit_test_no_generate: email_invalid_format_label, span.id("/revEmailAddress$/")
#unit_test_no_generate: confirm_email_required_label, span.id("/rfvConfirmEmail$/")
#unit_test_no_generate: confirm_email_does_not_match_label, span.id("/cvEmailAddress$/")
#unit_test_no_generate: combined_name_too_long_label, span.id("/valNameLength/")
#unit_test_no_generate: create_account_error_panel, div.id("/SiteLoginCreateAccountValidationSummary$/")
#unit_test_no_generate: log_in_slider_panel, div.className("panel-container");GameStopLoginSliderPanel;self
#unit_test_no_generate: credit_card_list, table.id("/CreditCardList$/");CreditCardList;self
#unit_test_no_generate: shipping_address_list, table.id("/ShippingAddressList$/");GameStopShippingAddressList;self
#unit_test_no_generate: popup_address_panel, div.id("/popAddressSelection_pnlPopup$/");GameStopPopupAddressPanel;self
#unit_test_no_generate: billing_address_edit_button, input.id("/billingAddressSummary_EditButton$/")
#unit_test_no_generate: credit_card_selector, input.className(create_ats_regex_string("ats-cardtype"));GameStopSelector;self
#unit_test_no_generate: credit_card_month_selector, get_self.select.id(create_ats_regex_string("ats-expmonth"));GameStopSelector;self
#unit_test_no_generate: credit_card_year_selector, get_self.select.id("/CCExpYearDropDown$|ExpirationYear_DropDownList/");GameStopSelector;self
#unit_test_no_generate: credit_card_number_field, div.id("/reg_center$/").find.input.id("/ccNumber$/")
#unit_test_no_generate: credit_card_cvv_field, input.id("/cvc_Textbox/")
#unit_test_no_generate: save_button, input.id("/ChangePasswordButton$|CreditCardButton$|_CommunicationPreferenceButton$|AddressUpdateButton$/")
#unit_test_no_generate: current_password_field, input.id("/pwCurrentTextBox$/")
#unit_test_no_generate: new_password_field, input.id("/pwNewTextBox$/")
#unit_test_no_generate: confirm_new_password_field, input.id("/pwConfirmTextBox$/")
#unit_test_no_generate: new_password_validation_label, span.id("/pwNewExpressionValidator$/")
#unit_test_no_generate: confirm_new_password_validation_label, span.id("/pwConfirmCompareValidator$/")
#unit_test_no_generate: change_password_validation_panel, div.id("/ChangePasswordValidationSummary$/")
#unit_test_no_generate: newsletter_signup_field, div.id("/NewsLetterSignUpControlPanel$/").find.input.id("/ctl00$mainContentPlaceHolder$signupButton$/")
#unit_test_no_generate: newsletter_join_button, span.id("/signupButton$/")

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to user account creation, access, and
# information.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopAccountInfoFinder
    #Deprecated
    # Returns the "my account" page credit cart link.
    def credit_card_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/changeCreditCardLinkButton/"), __method__)
    end

    #Deprecated
    # Returns the "my account" page address book link.
    def address_book_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/shipAddressLinkButton/"), __method__, self)
    end

    #Deprecated
    # Returns the "my account" page about me link.
    def about_me_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/personalInfoLinkButton/"), __method__)
    end

    #Deprecated
    # Returns the "my account" page Edge Card link.
    def edge_card_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/edgeCardLinkButton/"), __method__)
    end

    #Deprecated
    # Returns the "my account" page PowerUp Rewards Card link.
    def powerup_rewards_card_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/powerUpRewardsCardLinkButton/"), __method__)
    end

    #Deprecated
    # Returns the "my account" page communications preferences link.
    def communication_preferences_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/communicationPreferencesLinkButton/"), __method__)
    end

    #Deprecated
    # Returns the "my account" page change login link.
    def change_login_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/signLinkButton/"), __method__)
    end

    #Deprecated
    # Returns the "my account" page change password link.
    def change_password_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/changePasswordLinkButton/"), __method__)
    end

    #Deprecated
    # Returns the "my account" page merge reward accounts link.
    def merge_reward_accounts_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/mergeAccountsLinkButton/"), __method__)
    end


    #Deprecated
    # Returns the "Confirm E-mail Address" field.
    def confirm_email_address_field()
        # Note: the word Confirm is mispelled below because it's mispelled in the
        # actual code.
        $tracer.trace(__method__)
        return ToolTag.new(input.with("id.search(/(txtEmailAddressConfirm|ComfirmEmailText|txtConfirmEmailAddress$)/) != -1"), __method__)
    end

    # Returns the cancel button.
    def cancel_button()
        $tracer.trace(__method__)
        return ToolTag.new(img.id("/CancelImage/").parent("a"), __method__)
    end

    # Returns the "First Name" field.
    def first_name_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/textFirstName/"), __method__)
    end

    # Returns the "Last Name" field.
    def last_name_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/textLastName/"), __method__)
    end

    # Returns the "Address 1" field.
    def address_1_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/textAddressLine1/"), __method__)
    end

    # Returns the "Address 2" field.
    def address_2_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/textAddressLine2/"), __method__)
    end

    # Returns the "City" field.
    def city_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/textCity/"), __method__)
    end

    # Returns the "State/Province" selector. Usually used in conjunction with
    # the value methods of GameStopSelector.
    def state_province_selector
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.id("/ddlState/"), __method__), self)
    end

    # Returns the "Zip/Postal Code" field.
    def zip_postal_code_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/textZip/"), __method__)
    end

    # Returns the "Country" selector. Usually used in conjunction with
    # the value methods of GameStopSelector.
    def country_selector
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.id("/ddlCountry/"), __method__), self)
    end

    # Returns the "Phone Number" field.
    def phone_number_field
        $tracer.trace(__method__)
        return ToolTag.new(input.with("id.search(/(textPhoneNumberDaytime|txtPhoneNumber$)/) != -1"), __method__)
    end

    # Returns the "Privacy Policy Message" label.
    def privacy_policy_message_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/lblPrivacyPolicyMessage$/"), __method__)
    end

    # Returns the First Name Required label.
    def first_name_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/valFirstName$/"), __method__)
    end

    # Returns the Last Name Required label.
    def last_name_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/valLastName$/"), __method__)
    end

    # Returns the Address Required label.
    def address_1_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/valAddress$/"), __method__)
    end

    # Returns the City Required label.
    def city_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/valCity$/"), __method__)
    end

    # Returns the Postal Code Required label.
    def postal_code_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/valZip$/"), __method__)
    end

    # Returns the Postal Code Invalid Format label.
    def postal_code_invalid_format_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/valZipRegEx$/"), __method__)
    end

    # Returns the State Required label.
    def state_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/valState$/"), __method__)
    end

    # Returns the Phone Required label.
    def phone_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/PhoneRequiredValidator$/"), __method__)
    end

    # Returns the Phone Invalid Format label.
    def phone_invalid_format_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/valPhoneFormat$/"), __method__)
    end

    # Returns the Email Required label.
    def email_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/rfvEmailAddress$/"), __method__)
    end

    # Returns the Email Invalid Format label.
    def email_invalid_format_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/revEmailAddress$/"), __method__)
    end

    # Returns the Confirm Email Required label.
    def confirm_email_required_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/rfvConfirmEmail$/"), __method__)
    end

    # Returns the Confirm Email Does Not Match label.
    def confirm_email_does_not_match_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/cvEmailAddress$/"), __method__)
    end

    # Returns the Combined Name Too Long label.
    def combined_name_too_long_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/valNameLength/"), __method__)
    end



    # Returns the create account error panel, used on the login pages
    # found in the HTML differently than the error_message_panel
    # (in game_stop_html_finder.rb).
    def create_account_error_panel
        $tracer.trace(__method__)
        return ToolTag.new(div.id("/SiteLoginCreateAccountValidationSummary$/"), __method__)
    end

    # Returns the log in slider panel.
    def log_in_slider_panel
        $tracer.trace(__method__)
        return GameStopLoginSliderPanel.new(ToolTag.new(div.className("panel-container"), __method__), self)
    end

    # Returns the credit cards on the Credit Card Info page.
    def credit_card_list
        $tracer.trace(__method__)
        return CreditCardList.new(ToolTag.new(table.id("/CreditCardList$/"), __method__), self)
    end

    # Returns the shipping addresses on the Address Book page.
    def shipping_address_list
        $tracer.trace(__method__)
        return GameStopShippingAddressList.new(ToolTag.new(table.id("/ShippingAddressList$/"), __method__), self)
    end

    # Returns the popup address panel found for entering a new address on the
    # shipping and billing pages, also for changing an address on the handling
    # options and preview page.
    #def popup_address_panel
    #    $tracer.trace(__method__)
    #    return GameStopPopupAddressPanel.new(ToolTag.new(div.id("/popAddressSelection_pnlPopup$/"), __method__), self)
    #end

    # Returns the remove address button.
    # === Usage
    # remove_address_button
    # remove_address_button(:and_confirm_canel)
    # === Parameters:
    # _and_confirm_cancel_:: a symbol(name preceded by a colon) of :and_confirm_canel
    def remove_address_button(and_confirm_cancel = nil)
        $tracer.trace(__method__)
        and_confirm_cancel == :and_confirm_cancel ? record.confirm.cancel : record.confirm.ok
        return ToolTag.new(input.id("/AddressDeleteButton$/"), __method__)
    end

    # Returns the billing address edit button.
    def billing_address_edit_button
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/billingAddressSummary_EditButton$/"), __method__)
    end

    # Returns the credit card type selector on the Credit Card Info page.
    def credit_card_selector
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(input.className(create_ats_regex_string("ats-cardtype")), __method__), self)
    end

    # Returns the credit card month on the Credit Card Info page.
    def credit_card_month_selector
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.id(create_ats_regex_string("ats-expmonth")), __method__), self)
    end

    # Returns the credit card year selector on the Credit Card Info page.
    def credit_card_year_selector
        $tracer.trace(__method__)
        return GameStopSelector.new(ToolTag.new(get_self.select.id("/CCExpYearDropDown$|ExpirationYear_DropDownList/"), __method__), self)
    end

    # Returns the credit card number on the Credit Card Info page.
    def credit_card_number_field
        $tracer.trace(__method__)
        return ToolTag.new(div.id("/reg_center$/").find.input.id("/ccNumber$/"), __method__)
    end

    # Returns the credit card CVV2 number field on the Credit Card Info page.
    def credit_card_cvv_field
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/cvc_Textbox/"), __method__)
    end

    # Returns the save button.
    def save_button
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/ChangePasswordButton$|CreditCardButton$|_CommunicationPreferenceButton$|AddressUpdateButton$/"), __method__)
    end

    # Returns the "Current Password" input textbox.
    # def current_password_field
    #     $tracer.trace(__method__)
    #     return ToolTag.new(input.id("/pwCurrentTextBox$/"), __method__)
    # end
    #Believe to be DEPRECATED
    ## Returns "New Password" input textbox.
    #def new_password_field
    #    $tracer.trace(__method__)
    #    return ToolTag.new(input.id("/pwNewTextBox$/"), __method__)
    #end
    #
    #Believe to be DEPRECATED
    ## Returns "Confirm Password" input textbox.
    #def confirm_new_password_field
    #    $tracer.trace(__method__)
    #    return ToolTag.new(input.id("/pwConfirmTextBox$/"), __method__)
    #end

    # Returns validation summary due to "New Password" invalid input.
    def new_password_validation_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/pwNewExpressionValidator$/"), __method__)
    end

    # Returns validation summary due to "Confirm Password" invalid input.
    def confirm_new_password_validation_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/pwConfirmCompareValidator$/"), __method__)
    end

    # Returns validation summary due to Changing Password invalidity.
    def change_password_validation_panel
        $tracer.trace(__method__)
        return ToolTag.new(div.id("/ChangePasswordValidationSummary$/"), __method__)
    end

    # rar- added for omniture testing
    # Returns newsletter signup email
    def newsletter_signup_field
        $tracer.trace(__method__)
        return ToolTag.new(div.id("/NewsLetterSignUpControlPanel$/").find.input.id("/ctl00$mainContentPlaceHolder$signupButton$/"), __method__)
    end

    # Returns the Join button. Used for newsletter signup
    def newsletter_join_button()
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/signupButton$/"), __method__)
    end

    # HACK : This needs to be removed and put in the Common/Profile directory
		# Returns addresses tab
    def addresses_tab
			$tracer.trace(__method__)
			return ToolTag.new(jquery("a[class~='ats-addressesnavlnk']"), __method__)
		end

    # HACK : This needs to be removed and put in the Common/Profile directory
		# Returns add shipping address button
    def add_shipping_address_button
			$tracer.trace(__method__)
			return ToolTag.new(section.className("ats-shipaddrpanel").find.div.className("buttons").find.button, __method__)
		end

    # HACK : This needs to be removed and put in the Common/Profile directory
		# Returns add billing address button
    def add_billing_address_button
			$tracer.trace(__method__)
			return ToolTag.new(section.className("ats-billaddrpanel").find.div.className("buttons").find.button, __method__)
		end

    # HACK : This needs to be removed and put in the Common/Profile directory
		# Returns add save new account button
    def save_new_account_button
			$tracer.trace(__method__)
			return ToolTag.new(jquery("button[class~='ats-savebtn']"), __method__)
		end

    # Returns the Cancel button on the Credit Card info page
    def cancel_credit_card_button
      $tracer.trace(__method__)
      return ToolTag.new(input.id("/CancelCreditCardButton/"), __method__)
    end
end

