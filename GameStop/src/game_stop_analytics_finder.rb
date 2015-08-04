# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#unit_test_generate: optimizely_script, script.src("//cdn.optimizely.com/js/286376465.js")
#unit_test_generate: optimizely_adroll_function, script.with.innerText("/ef_event_type/"
#unit_test_generate: adroll_script, script.with.innerText("/adroll_adv_id = \"HGAM45IRB5GXVJPUZ3AIJV\";/"
#unit_test_generate: channel_intelligence_script, script.src("https://cts-secure.channelintelligence.com/11163_confirmation.js"
#unit_test_generate: google_analytics_script, script.src("/.google-analytics.com/ga.js"

module GameStopAnalyticsFinder
  # Returns the optimizely javascript
  def optimizely_script
    $tracer.trace(__method__)
    return ToolTag.new(script.src("//cdn.optimizely.com/js/286376465.js"), __method__)
  end

  # Returns the optimizely and adroll function from a javascript
  def optimizely_adroll_function
    $tracer.trace(__method__)
    #return ToolTag.new(script.with.innerText("/ef_event_type/"), __method__)
    return script.innerText("/ef_event_type/").innerText
  end

  # Returns the adroll javascript
  def adroll_script
    $tracer.trace(__method__)
    #return ToolTag.new(script.innerText("/adroll_adv_id = \"HGAM45IRB5GXVJPUZ3AIJV\";/"), __method__)
    return script.innerText("/adroll_adv_id = \"HGAM45IRB5GXVJPUZ3AIJV\";/").innerText
  end

  # Returns the channel intelligence javascript
  def channel_intelligence_script
    $tracer.trace(__method__)
    return ToolTag.new(script.src("https://cts-secure.channelintelligence.com/11163_confirmation.js"), __method__)
  end

  # Returns the google analytics javascript
  def google_analytics_script
    $tracer.trace(__method__)
    return ToolTag.new(script.src("/.google-analytics.com/ga.js"), __method__)
  end

end