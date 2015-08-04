module GameStopMobileHTMLFinder
    # Waits up to the specified number of milliseconds for the dotomi iframe.
    # It doesn't matter if it's not found.
    # Returns nil.
    # === Parameters:
    # _timeout_ms_ - timeout, in milliseconds, to wait to see if we find the iframe. Default is 5000.
    def wait_for_landing_page_load(timeout_ms = 5000)
        # TODO: add if needed
        #$tracer.trace(current_method_name)
        #timeout(timeout_ms).div.id("time_keeper")
        $tracer.report("Method #{current_method_name} is not currently implemented")
        return nil
    end

    # Returns Footer Link
    # Returns the Fullsite link
    def fullsite_link
      $tracer.trace(__method__)
      return ToolTag.new(jquery("a[href='/Home/FullSite']"),__method__)
    end

    # Returns the Privacy Policy link
    def privacy_policy_link
      $tracer.trace(__method__)
      return ToolTag.new(jquery("a[href='/Home/PrivacyPolicy']"),__method__)
    end

    # Returns the Condition of Use link
    def condition_of_use_link
      $tracer.trace(__method__)
      return ToolTag.new(jquery("a[href='/Home/ConditionsofUse']"),__method__)
    end

    # Returns the Visit Pixel script
    def visit_pixel_script
      $tracer.trace(__method__)
      return ToolTag.new(div.className("trackable").script, __method__, self)
    end

    # Returns the visit pixel script for PowerUp Rewards page
    def visit_pixel_script_powerup
      $tracer.trace(__method__)
      return ToolTag.new(div.className("/ui-content ui-body-c/").script, __method__, self)
    end
end

