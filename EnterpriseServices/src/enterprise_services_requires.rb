# This file only contains requires pertaining to QAAutomation finders and common use browser utilities.
if !defined? INCLUDE_ENTERPRISE_SERVICES_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV['QAAUTOMATION_FINDERS']

    require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"
    require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/services_requires"
    require "#{qaautomation_finders_dir}/Common/Services/src/REST/services_requires"

    #require "#{qaautomation_finders_dir}/EnterpriseServices/src/enterprise_services_allspark_components"
    require "#{qaautomation_finders_dir}/EnterpriseServices/src/enterprise_services_allspark_finder"

	require "#{qaautomation_finders_dir}/EnterpriseServices/src/enterprise_services_browser_modules"

    INCLUDE_ENTERPRISE_SERVICES_REQUIRES = false
end
