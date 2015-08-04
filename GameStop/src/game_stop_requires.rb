# This file only contains requires pertaining to QAAutomation finders and common use browser utilities.
if !defined? INCLUDE_GAME_STOP_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV['QAAUTOMATION_FINDERS']

    require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/services_requires"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/services_requires"

    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_components"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_analytics_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_checkout_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_search_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_order_history_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_cart_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_account_info_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_wish_list_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_product_detail_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_hops_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_html_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_header_footer_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_paypal_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/recommerce_search_finder"
		require "#{qaautomation_finders_dir}/GameStop/src/game_stop_gift_cards_finder"
    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_purcc_finder"

    require "#{qaautomation_finders_dir}/GameStop/src/game_stop_browser_modules"

    INCLUDE_GAME_STOP_REQUIRES = false
end
