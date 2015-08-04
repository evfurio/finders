# This file only contains requires pertaining to QAAutomation finders and common use browser utilities.
if !defined? INCLUDE_GAME_INFORMER_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV['QAAUTOMATION_FINDERS']

    require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/services_requires"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/services_requires"

    require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_crm_components"
    require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_components"
    require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_crm_finder"
	  require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_crm_finder_subscribers"
    require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_crm_finder_reports"
    require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_crm_finder_code_tables"
    require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_finder"

    require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_browser_modules"

    INCLUDE_GAME_INFORMER_REQUIRES = false
end
