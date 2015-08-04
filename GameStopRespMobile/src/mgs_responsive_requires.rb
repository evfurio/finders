# This file only contains requires pertaining to QAAutomation finders and common use browser utilities.
if !defined? INCLUDE_GAME_STOP_RESPMOBILE_REQUIRES
  qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
  qaautomation_finders_dir = ENV['QAAUTOMATION_FINDERS']

  require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"
  require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/services_requires"
  require "#{qaautomation_finders_dir}/Common/Services/src/REST/services_requires"
	
	require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

  require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_product_detail_finder"
  require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_browse_finder"
	require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_cart_finder"
	require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_error_finder"
  require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_header_finder"
  require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_footer_finder"
	require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_components"
	require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_checkout_finder"

  require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_components"
  require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_checkout_new_finder"
  require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_giftcards_finder"
  require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_paypal_finder"

  require "#{qaautomation_finders_dir}/GameStop/src/game_stop_components"
  require "#{qaautomation_finders_dir}/GameStop/src/game_stop_search_finder"
  require "#{qaautomation_finders_dir}/GameStop/src/game_stop_product_detail_finder"

	require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_browser_modules"

  INCLUDE_GAME_STOP_RESPMOBILE_REQUIRES = false
end