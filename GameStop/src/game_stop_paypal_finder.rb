#unit_test: paypal_chkout_button, a.className(create_ats_regex_string("ats-paypalcheckoutbtn"))
#unit_test: paypal_payment_selector, input.className("radiopp");GameStopRadioButtons;self
#unit_test: paypal_personal_tab, a.className("scTrack:SRD:Nav:L8");;self
#unit_test: paypal_logout_link, a.href("/logout/");;self
#unit_test: paypal_master_login_link, a.innerText("PayPal Sandbox");;self
#unit_test: paypal_master_email_field, input.id("login_email");;self
#unit_test: paypal_master_password_field, input.id("login_password");;self
#unit_test: paypal_master_login_button, input.className("formBtnOrange");;self
#unit_test: paypal_test_acct_login_field, input.id("login_email");;self
#unit_test: paypal_test_acct_password_field, input.id("login_password");;self
#unit_test: paypal_test_acct_login_button, input.id("submitLogin");;self
#unit_test: paypal_shipping_address_panel, h4("Shipping address");;self
#unit_test: paypal_test_acct_continue_button, input.id("continue");;self
#unit_test: paypal_policy_consent_checkbox, input.id(create_ats_regex_string("esignOpt"));;self
#unit_test: paypal_agree_button, input.id(create_ats_regex_string("agree"));;self

# This file contains the module for the GameStop PayPal finders.
#
# Author:: David Turner, except all the stuff I stoles from Impulse.  :P
# Copyright:: Copyright (c) 2013 GameStop, Inc. Remember it's got a Copyright.
# Not for external distribution. Really.

# == Overview
# This module is used to find PayPal-related elements.
module GameStopPayPalFinder

    #Paypal Checkout button in Cart
    def paypal_chkout_button
        # unit_test: paypal_chkout_button, a.className(create_ats_regex_string("ats-paypalcheckoutbtn"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-paypalcheckoutbtn")), __method__)
    end

    #Paypal Checkout button in Payment page

    #Toggle between credit card and paypal.  I think the ats tag is in the wrong place as it is at the child of the input so I can't latch on to the radio button.
    def paypal_payment_selector
        # unit_test: paypal_payment_button, a.className("radiopp")
        $tracer.trace(__method__)
        return GameStopRadioButtons.new(ToolTag.new(input.className("radiopp"), __method__), self)
    end

    # Returns "Personal" tab on sandbox.paypal.com
    def paypal_personal_tab
        # unit_test_no_generate: paypal_personal_tab, a.className("scTrack:SRD:Nav:L8")
        $tracer.trace(__method__)
        return ToolTag.new(a.className("scTrack:SRD:Nav:L8"), __method__, self)
    end

    # Returns "Logout" link on sandbox.paypal.com
    def paypal_logout_link
        # unit_test_no_generate: paypal_logout_link, a.href("/logout/")
        $tracer.trace(__method__)
        return ToolTag.new(a.href("/logout/"), __method__, self)
    end

    # Returns "Master Login" link on sandbox.paypal.com
    def paypal_master_login_link
        # unit_test_no_generate: paypal_master_login_link, a.innerText("PayPal Sandbox")
        $tracer.trace(__method__)
        return ToolTag.new(a.innerText("PayPal Sandbox"), __method__, self)
    end

    # Returns "Master Email" field on sandbox.paypal.com
    def paypal_master_email_field
        # unit_test_no_generate: paypal_master_email_field, input.id("login_email")
        $tracer.trace(__method__)
        return ToolTag.new(input.id("login_email"), __method__, self)
    end

    # Returns "Master Password" field on sandbox.paypal.com
    def paypal_master_password_field
        # unit_test_no_generate: paypal_master_password_field, input.id("login_password")
        $tracer.trace(__method__)
        return ToolTag.new(input.id("login_password"), __method__, self)
    end

    # Returns "Master Login" button on sandbox.paypal.com
    def paypal_master_login_button
        # unit_test_no_generate: paypal_master_login_button, input.className("formBtnOrange")
        $tracer.trace(__method__)
        return ToolTag.new(input.className("formBtnOrange"), __method__, self)
    end

    # Returns "Test Acct Login" field on sandbox.paypal.com
    def paypal_test_acct_login_field
        # unit_test_no_generate: paypal_test_acct_login_field, input.id("login_email")
        $tracer.trace(__method__)
        return ToolTag.new(div.className("/emailField/").input, __method__, self)
    end

    # Returns "Test Acct Password" field on sandbox.paypal.com
    def paypal_test_acct_password_field
        # unit_test_no_generate: paypal_test_acct_password_field, input.id("login_password")
        $tracer.trace(__method__)
        return ToolTag.new(div.className("/passwordField/").input, __method__, self)
    end

    # Returns "Test Acct Login" button on sandbox.paypal.com
    def paypal_test_acct_login_button
        # unit_test_no_generate: paypal_test_acct_login_button, input.id("submitLogin")
        $tracer.trace(__method__)
        return ToolTag.new(input.className("/loginBtn/"), __method__, self)
    end

    # Returns "Shipping Address" panel on sandbox.paypal.com
    def paypal_shipping_address_panel
        # unit_test_no_generate: paypal_shipping_address_panel, h4("Shipping address")
        $tracer.trace(__method__)
        return ToolTag.new(h4("Shipping address"), __method__, self)
    end

    # Returns "Test Acct Continue" button on sandbox.paypal.com
    def paypal_test_acct_continue_button
        # unit_test_no_generate: paypal_test_acct_continue_button, input.id("continue")
        $tracer.trace(__method__)
        return ToolTag.new(input.className("/continueButton/"), __method__, self)
    end

    def paypal_policy_consent_checkbox
        # unit_test_no_generate: paypal_policy_consent_checkbox, input.id(create_ats_regex_string("esignOpt"))
        $tracer.trace(__method__)

        return ToolTag.new(input.id(create_ats_regex_string("esignOpt")), __method__, self)
    end

    def paypal_agree_button
        # unit_test_no_generate: paypal_agree_button, input.id(create_ats_regex_string("agree"))
        $tracer.trace(__method__)

        return ToolTag.new(input.id(create_ats_regex_string("agree")), __method__, self)
    end
		
		# Returns the payment options radio button
    def payment_options_radio_button
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-paymentoptionsradiobtn")), __method__)
    end
		
		# Returns "Change Payment Method" link
    def change_payment_method_link
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-changepaymethod")), __method__)
    end
		
		# Returns "Paypal Payment Info"
    def paypal_payment_info
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-paypalinfo")), __method__)
    end
end
