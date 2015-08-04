# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

Object.send(:remove_const, :GameInformerCrmFinder) if Object.const_defined?(:GameInformerCrmFinder)

# This module exists to provide an abstraction layer for
# GameInformer test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameInformerCrmFinder

#####################################################################
##### Finders from CRM login page (<crm_env>.gameinformer.com)  #####
#####################################################################

  #  Return the Log On link from the CRM main page
  def log_on_link
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/Account/Logon/"), __method__)
  end

 #  Returns the user name field  
 def user_name_field
   $tracer.trace(__method__)
   return ToolTag.new(input.id("/UserName/"), __method__)
 end

@spec
 #  Returns the password name field  
 def password_field
   $tracer.trace(__method__)
   return ToolTag.new(input.id("/Password/"), __method__)
 end
 
 # Return the Remember me checkbox
 def remember_me
   $tracer.trace(__method__)
   return ToolTag.new(input.id("/RememberMe/"), __method__)
 end
 
# Return the Log On button
 def log_on_button
   $tracer.trace(__method__)
   return ToolTag.new(input.value("Log On"), __method__)
 end
  

end


