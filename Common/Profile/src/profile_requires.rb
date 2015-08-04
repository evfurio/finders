# This file only contains requires pertaining to QAAutomation finders and common use browser utilities.
if !defined? INCLUDE_PROFILE_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV['QAAUTOMATION_FINDERS']

    require "#{qaautomation_dir}/dsl/Browser/src/browser_requires"
    require "#{qaautomation_finders_dir}/Common/src/common_requires"

    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_components"

    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_account_info_finder"
    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_addresses_finder"
    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_communications_finder"
    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_forgot_password_finder"
    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_header_finder"
    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_orders_finder"
    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_personal_info_finder"
    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_pur_activation_finder"

    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_browser_modules"

    INCLUDE_PROFILE_REQUIRES = false
end
