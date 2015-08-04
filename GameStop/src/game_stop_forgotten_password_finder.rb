# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#unit_test_no_generate: forgot_your_password_link, a.id("/lnkForgotPassword/");;self
#unit_test_no_generate: forgot_password_email_field, input.id("/forgotPasswordEmailText/")
#unit_test_no_generate: send_password_button, input.id("/forgotPasswordButton/")
#unit_test_no_generate: password_retrieval_label, span.id("/lblPasswordSent/")
#unit_test_no_generate: send_new_password_to_user_link, a.with("href", "/ForgotPasswordPopup/")

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to forgotten passwords.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopForgottenPasswordFinder

    ##Returns the email address field for retrieving a forgotten password.
    #def forgot_password_email_field()
    #    $tracer.trace(__method__)
    #    return ToolTag.new(input.id("/forgotPasswordEmailText/"), __method__)
    #end
    #
    ## Returns the "send password" button.
    #def send_password_button()
    #    $tracer.trace(__method__)
    #    return ToolTag.new(input.id("/forgotPasswordButton/"), __method__)
    #end
    #
    ## Returns the text label in the window after the password retrieval
    ## actually happens.
    #def password_retrieval_label()
    #    $tracer.trace(__method__)
    #    return ToolTag.new(span.id("/lblPasswordSent/"), __method__)
    #end
    #
    ## Returns the "Click Here" link on the create password page for forgotten password
    #def send_new_password_to_user_link
    #    $tracer.trace(__method__)
    #    return ToolTag.new(a.with("href", "/ForgotPasswordPopup/"), __method__)
    #end

end
