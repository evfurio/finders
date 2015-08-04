if !defined? INCLUDE_SOAP_SERVICES_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV["QAAUTOMATION_FINDERS"]

    require "#{qaautomation_dir}/dsl/Services/src/services_requires"

    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_account"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_cart"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_catalog"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_pricing"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_profile"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_tax"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_digital_wallet"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_payment"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_commerce_server_data"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_icheckout"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_ipricing"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_purchase_order"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_shipping"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_store_search"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_digital_content"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_barcode"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_velocity"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/game_stop_trade_value"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/config_service"

    require "#{qaautomation_finders_dir}/Common/Services/src/Tibco/pur_loyalty_membership"
    require "#{qaautomation_finders_dir}/Common/Services/src/Tibco/customer_profile"
    require "#{qaautomation_finders_dir}/Common/Services/src/channel/channel_multipass"
    require "#{qaautomation_finders_dir}/Common/Services/src/Core/customer_service"
    require "#{qaautomation_finders_dir}/Common/Services/src/Tibco/membership_service"
		require "#{qaautomation_finders_dir}/Common/Services/src/Tibco/storeinformation_service"

    require "#{qaautomation_finders_dir}/Common/Services/src/common_function_link"

    INCLUDE_SOAP_SERVICES_REQUIRES = false
end

