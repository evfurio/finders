# This file only contains requires pertaining to QAAutomation finders and common use browser utilities.
if !defined? INCLUDE_GAME_STOP_MOBILE_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV['QAAUTOMATION_FINDERS']

    require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/services_requires"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/services_requires"

    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_components"
    #require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_checkout_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_checkout_new_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_search_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_cart_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_account_info_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_product_detail_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_html_finder"
		require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_giftcards_finder"
		require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_hops_finder"
		require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_feedback_finder"
		require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_paypal_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_store_locator_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_order_lookup_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_weekly_ad_finder"
    require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_browser_modules"

    INCLUDE_GAME_STOP_MOBILE_REQUIRES = false
end

