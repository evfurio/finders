if !defined? INCLUDE_POWER_UP_REWARDS_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV['QAAUTOMATION_FINDERS']

    require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/services_requires"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/services_requires"

    require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

    require "#{qaautomation_finders_dir}/PowerUpRewards/src/power_up_rewards_account_info_finder"
    require "#{qaautomation_finders_dir}/PowerUpRewards/src/power_up_rewards_browser_modules"

    INCLUDE_POWER_UP_REWARDS_REQUIRES = false
end
