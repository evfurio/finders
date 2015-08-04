# This file only contains requires pertaining to QAAutomation finders and common use browser utilities.
if !defined? INCLUDE_WEB_IN_STORE_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV['QAAUTOMATION_FINDERS']

    require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/services_requires"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/services_requires"

    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_account_info_finder"
    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_cart_finder"
    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_components"
    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_header_footer_finder"
    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_order_lookup_finder"
    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_product_details_finder"
    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"
    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_search_finder"
    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_shipping_options_finder"
    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_shipping_add_conf_finder"

    require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_browser_modules"

    INCLUDE_WEB_IN_STORE_REQUIRES = false
end
