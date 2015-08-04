# Author:: Chelsea Lovas & Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to community.
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseCommunityFinder
  # Returns the Impulse Community Log In label (community).
  def community_log_in_label
    # unit_test_no_generate: community_log_in_label, div.class("/head/")
    $tracer.trace(__method__)
    return ToolTag.new(div.class("/head/"), __method__, self)
  end

  # Returns the Impulse Community Sign Up link (community).
  def community_sign_up_link
    # unit_test_no_generate: community_sign_up_link, a.id("/LinkSignUp/")
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/LinkSignUp/"), __method__, self)
  end

  # Returns the Impulse Community User Name link (community).
  def community_user_name_link
    # unit_test_no_generate: community_user_name_link, a.id("/LinkUser/")
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/LinkUser/"), __method__, self)
  end

  # Returns the Impulse Community logoff link (community).
  def community_logoff_link
    # unit_test_no_generate: community_logoff_link, a.id("/Logoff/")
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/Logoff/"), __method__, self)
  end

  # Returns the Impulse Community Login Error label (community).
  def community_login_error_label
    # unit_test_no_generate: community_login_error_label, div.className("/message/")
    $tracer.trace(__method__)
    return ToolTag.new(div.className("/message/"), __method__, self)
  end
end