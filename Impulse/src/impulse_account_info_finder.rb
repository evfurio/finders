# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to user account creation, access, and
# information.
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseAccountInfoFinder

    # Returns the giftee "email or nickname" field.
    def email_or_nickname_field
        # unit_test_no_generate: email_or_nickname_field, input.className(create_ats_regex_string("ats-email-or-nickname-field"))
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-email-or-nickname-field")), __method__, self)
    end

    # Returns the giftee "confirm email or nickname" field.
    def confirm_email_or_nickname_field
        # unit_test_no_generate: confirm_email_or_nickname_field, input.className(create_ats_regex_string("ats-confirm-email-or-nickname-field"))
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-confirm-email-or-nickname-field")), __method__, self)
    end

    # Returns the login link.
    def login_link
        # unit_test_no_generate: login_link, a.className(create_ats_regex_string("ats-login-link"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-login-link")), __method__, self)
    end

  # Returns the create account link.
  def create_account_link
    $tracer.trace(__method__)
    # unit_test_no_generate: create_account_link, a.className(create_ats_regex_string("ats-create-account-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-create-account-link")), __method__, self)
  end

  # Returns the 'Create Account' button.
  def create_account_button
    $tracer.trace(__method__)
    # unit_test_no_generate: create_account_button, input.className(create_ats_regex_string("button_create_account"))
    return ToolTag.new(input.className(create_ats_regex_string("button_create_account")), __method__, self)
  end

  # Returns the opt in checkbox for promotions, etc.
  def promotions_and_special_offers_opt_in_checkbox
    $tracer.trace(__method__)
    # unit_test_no_generate: promotions_and_special_offers_opt_in_checkbox, div.className("/emaillist/").find.input.id("/CanEmail/")
    return ToolTag.new(div.className("/emaillist/").find.input.id("/CanEmail/"), __method__, self)
  end

  # Returns change billing information link.
  def change_billing_information_link
    # unit_test_no_generate: change_billing_information_link, a.innerText("Change Billing Information")
    $tracer.trace(__method__)
    return ToolTag.new(a.innerText("Change Billing Information"), __method__, self)
  end

  # Returns change password link.
  def change_password_link
    # unit_test_no_generate: change_password_link, a.innerText("Change Password")
    $tracer.trace(__method__)
    return ToolTag.new(a.innerText("Change Password"), __method__, self)
  end

  # Returns print invoice link.
  def print_invoices_link
    # unit_test_no_generate: print_invoices_link, a.innerText("Print Invoices (View Past Orders)")
    $tracer.trace(__method__)
    return ToolTag.new(a.innerText("Print Invoices (View Past Orders)"), __method__, self)
  end

  # Returns view unredeemed gift cards link.
  def view_unredeemed_gift_cards_link
    # unit_test_no_generate: view_unredeemed_gift_cards_link, a.innerText("View Unredeemed Gift Cards")
    $tracer.trace(__method__)
    return ToolTag.new(a.innerText("View Unredeemed Gift Cards"), __method__, self)
  end

    # Returns 'My Account Login' label.
    def my_account_login_label
        $tracer.trace(__method__)
        return ToolTag.new(h2.className(create_ats_regex_string("ats-my-account-login-label")), __method__, self)
    end

    # Returns account login panel.
    def login_account_panel
        $tracer.trace(__method__)
        return ImpulseLoginAccountPanel.new(ToolTag.new(div.className(create_ats_regex_string("ats-login-panel")), __method__, self), self)
    end

    # Returns create account panel.
    def create_account_panel
        $tracer.trace(__method__)
        return ImpulseCreateAccountPanel.new(ToolTag.new(div.className(create_ats_regex_string("ats-create-panel")), __method__, self), self)
    end

    # Return 'Success Page' label
    def success_page_label
        $tracer.trace(__method__)
        return ToolTag.new(h2.className(create_ats_regex_string("ats-success-page-label")), __method__, self)
    end

    # Returns the continue button.
    def come_on_in_button
      $tracer.trace(__method__)
      # unit_test_no_generate: come_on_in_button, a.className(create_ats_regex_string('ats-continue-button'))
      return ToolTag.new(a.className(create_ats_regex_string('ats-continue-button')), __method__, self)
    end
    
    # Returns message field for gift message
    def message_field
      # unit_test_no_generate: message_field, textarea.className(create_ats_regex_string("ats-message-field"))
      $tracer.trace(__method__)
      return ToolTag.new(textarea.className(create_ats_regex_string("ats-message-field")), __method__, self)
    end

end
