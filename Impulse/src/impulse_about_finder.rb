# == Overview
# Module contains "about" page finders.
# located on the homepage.
module ImpulseAboutFinder
    # Returns "Get the GameStop PC Downloads App" label.
    def pc_downloads_app_label
        $tracer.trace(__method__)
        # unit_test_no_generate: pc_downloads_app_label, create_ats_regex_string("ats-pc-downloads-app-label"))
        return ToolTag.new(h1.className(create_ats_regex_string("ats-pc-downloads-app-label")), __method__, self)
    end

    # Returns "Download Now" button.
    def download_now_button
        # unit_test_no_generate: download_now_button, a.className(create_ats_regex_string("ats-download-now-button"))
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-download-now-button")), __method__, self)
    end

end

