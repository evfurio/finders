# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#unit_test_no_generate: close_popup_link, a.id("/lnkClosePopup$/")
#unit_test_no_generate: error_message_panel, div.id("/ValidationSummary1$/")

# This file contains the module that calls the WebSpec functions and methods
# for general access (i.e. not affiliated with a particular operation
# like "search" or "checkout".
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

# == Overview
# This class calls the WebSpec[http://watij.com/webspec-api/] functions and methods
# directly. It exists to provide an abstraction layer for
# Game Informer test case writers, preventing the test case writers
# from having to have intimate knowledge of the underlying tool.
# <b>It's preferred that test case writers use the DSL class' methods</b>, but
# it will occasionally be necessary to call the methods in this class which
# provide more granular access to webpage components. Additionally, the
# methods in this class are the primary building blocks for the DSL methods.
# == Usage
#  link = @browser.log_in_link
#  link.click
# or, equivalently,
#  @browser.log_in_link.click
# The steps to perform a login could be the following:
#  @browser.log_in_link.click
#  @browser.email_address_field.value = "ozzy@osbourne.com"
#  @browser.password_field.value = "1tsasecret"
#  @browser.log_in_button.click
#  @browser.log_out_link.should_exist

module GameStopHTMLFinder

    # Waits up to the specified number of milliseconds for the dotomi iframe.
    # It doesn't matter if it's not found.
    # Returns nil.
    # === Parameters:
    # _timeout_ms_ - timeout, in milliseconds, to wait to see if we find the iframe. Default is 5000.
    def wait_for_landing_page_load(timeout_ms = 1000)
        $tracer.trace(__method__)
        sleep timeout_ms/1000   # ruby sleep is in seconds
        return nil
    end

    # Returns the server IP address as a string.
    def server_ip_address
        $tracer.trace(__method__)
        begin
            return meta.name("WT.sv").content.strip
        rescue
            return "Unknown IP Address"
        end
    end

    # Returns the Close Popup link
    def close_popup_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/lnkClosePopup$/"), __method__)
    end

    # Returns the error message panel, this is the most common panel
    # but some error panels need different finders.
    # See: game_stop_account_info_finder.rb, log_in_error_panel,
    # create_account_error_panel
    def error_message_panel
        $tracer.trace(__method__)
        return ToolTag.new(div.id("/ValidationSummary1$/"), __method__)
    end

end

