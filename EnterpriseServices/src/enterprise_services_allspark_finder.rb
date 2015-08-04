# Copyright:: Copyright (c) 2014 GameStop, Inc.
# Not for external distribution.

Object.send(:remove_const, :EnterpriseServicesAllSparkFinder) if Object.const_defined?(:EnterpriseServicesAllSparkFinder)

# This module exists to provide an abstraction layer for
# GameInformer test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module EnterpriseServicesAllSparkFinder

#####################################################################
##### Finders from AllSparkUI login page (https://globaldlcadministrationqa.testecom.pvt/DLCPlus/)  #####
#####################################################################

  #  Return the Home button from the admin main page
  def home_button
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/DLCPlus/"), __method__)
  end

  #  Return the Product Catalog button from the admin main page
  def produt_catalog_button
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/DLCPlus/Catalog/Index"), __method__)
  end

  #  Return the Platform Instructions button from the admin main page
  def platform_instructions_button
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/DLCPlus/PlatformInstruction"), __method__)
  end

  def confirm_email_address
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/(mailto:)/"), __method__)
  end

end


