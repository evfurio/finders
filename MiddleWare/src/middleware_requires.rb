if !defined? MIDDLEWARE_REQUIRES
  qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
  qaautomation_finders_dir = ENV["QAAUTOMATION_FINDERS"]
  require "#{qaautomation_dir}/common/src/options"
  require "#{qaautomation_dir}/common/src/qaautomation_utilities"
  require "#{qaautomation_dir}/common/src/qaautomation_formatter"
  require "#{qaautomation_dir}/common/src/fixed_length_file"
  require "#{qaautomation_dir}/dsl/FileValidations/src/fixed_length_file_base_class"
  require "#{qaautomation_finders_dir}/MiddleWare/src/store_file"
  require "#{qaautomation_finders_dir}/MiddleWare/src/upc_file"
  require "#{qaautomation_finders_dir}/MiddleWare/src/pre_file"
  require "#{qaautomation_finders_dir}/MiddleWare/src/platform_file"
  require "#{qaautomation_finders_dir}/MiddleWare/src/supply_file"
  require "#{qaautomation_finders_dir}/MiddleWare/src/price_file"
  require "#{qaautomation_finders_dir}/MiddleWare/src/program_file"
  require "#{qaautomation_finders_dir}/MiddleWare/src/assoc_file"
  require "#{qaautomation_finders_dir}/MiddleWare/src/product_file"

  MIDDLEWARE_REQUIRES = false
end