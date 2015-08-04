if !defined? INCLUDE_REST_SERVICES_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV["QAAUTOMATION_FINDERS"]

    require "#{qaautomation_dir}/dsl/Services/src/services_requires"

    require "#{qaautomation_finders_dir}/Common/Services/src/REST/game_stop_activation_resource"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/game_stop_addresses_resource"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/game_stop_communication_preferences_resource"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/game_stop_payment_methods_resource"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/game_stop_profiles_resource"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/game_stop_security_questions_resource"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/game_stop_cart_resource"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/teamcity_resource"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/cybersource_tokenization_resource"
   # require "#{qaautomation_finders_dir}/Common/Services/src/REST/impulse_users_profiles_resource"
    require "#{qaautomation_finders_dir}/Common/Services/src/common_function_link"

    INCLUDE_REST_SERVICES_REQUIRES = false
end
