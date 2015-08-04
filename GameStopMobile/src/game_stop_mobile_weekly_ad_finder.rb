# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

module GameStopMobileWeeklyAdFinder

  # Returns Weekly Ad link.
  def weekly_ad_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-nav_weekly_ad_link")), __method__, self)
  end

  # Returns Weekly Ad link.
  def weekly_ad_container
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ad_container")), __method__, self)
  end

end

