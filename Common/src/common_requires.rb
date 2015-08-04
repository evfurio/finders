# This file only contains requires pertaining to QAAutomation finders and common use browser utilities.
if !defined? INCLUDE_COMMON_REQUIRES
    qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
    qaautomation_finders_dir = ENV['QAAUTOMATION_FINDERS']

    require "#{qaautomation_finders_dir}/Common/src/common_components"

    INCLUDE_COMMON_REQUIRES = false
end
