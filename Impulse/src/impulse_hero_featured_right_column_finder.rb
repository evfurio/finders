# == Overview
# Module contains Hero, PC Downloads App, Daily Deal, Announcements, Featured Games finders, specifically
# located on the homepage.
module ImpulseHeroFeaturedRightColumnFinder

    # Returns "hero" banner.
    def hero_banner
        $tracer.trace(__method__)
        # unit_test_no_generate: hero_banner, a.id("hphero").find.img
        return ToolTag.new(a.id("hphero").find.img, __method__, self)
    end

    # Returns "hero" left arrow button.
    def hero_left_arrow_button
        $tracer.trace(__method__)
        # unit_test_no_generate: hero_left_arrow_button, a.id("leftArrowTest").find.img
        return ToolTag.new(a.id("leftArrowTest").find.img, __method__, self)
    end

    # Returns "hero" left arrow button.
    def hero_right_arrow_button
        $tracer.trace(__method__)
        # unit_test_no_generate: hero_right_arrow_button, a.with.className("/(^|\s+)rightArrow($|\s+)/").find.img
        return ToolTag.new(a.with.className("/(^|\s+)rightArrow($|\s+)/").find.img, __method__, self)
    end

    # Returns "Download Now!" link.
    def download_now_link
        # unit_test_no_generate: area.className(create_ats_regex_string("ats-download-now-link"))
        $tracer.trace(__method__)
        return ToolTag.new(area.className(create_ats_regex_string("ats-download-now-link")), __method__, self)
    end

    # Returns "PC DOWNLOADS APP", "Learn More" button (corner page tab button flip).
    def learn_more_button
        $tracer.trace(__method__)
        # unit_test_no_generate: learn_more_button, area.href("/[/]about$/")
        return ToolTag.new(area.href("/[/]about$/"), __method__, self)
    end

    # Returns the daily deal img.
    def daily_deal_link
        $tracer.trace(__method__)
        # unit_test_no_generate: daily_deal_link, a.id("impulsedailydeal").img
        return ToolTag.new(a.id("impulsedailydeal").img, __method__, self)
    end

    # Returns the announcements "rss" orange button.
    def announcements_rss_button
        $tracer.trace(__method__)
        # unit_test_no_generate: announcements_rss_button, a.href("/[/]rss[/]news$/")
        return ToolTag.new(a.href("/[/]rss[/]news$/"), __method__, self)
    end

    # Returns the list of announcements.
    def announcements_list
        $tracer.trace(__method__)
        # unit_test_no_generate: announcements_list, section.className("/(^|\s+)ats-announcements($|\s+)/"; ImpulseAnnouncementsList
        return ImpulseAnnouncementsList.new(ToolTag.new(section.className("/(^|\s+)ats-announcements($|\s+)/"), __method__, self), self)
    end

    # Returns the announcements "More" link
    def announcements_more_link
        $tracer.trace(__method__)
        # unit_test_no_generate: announcements_more_link, a.id("imp_announcemore")
        return ToolTag.new(a.id("imp_announcemore"), __method__, self)
    end

    # Returns the featured games "rss" orange button.
    def featured_games_rss_button
        $tracer.trace(__method__)
        # unit_test_no_generate: featured_games_rss_button, a.href("/[/]rss[/]gamesbestsellers$/")
        return ToolTag.new(a.href("/[/]rss[/]gamesbestsellers$/"), __method__, self)
    end

	# Returns the "Featured Games" list.
    def featured_games_list
        $tracer.trace(__method__)
        # unit_test_no_generate: featured_games_list, article.className(create_ats_regex_string("ats-feat-games-item")); ImpulseFeaturedProductList
        tag = ToolTag.new(article.className(create_ats_regex_string("ats-feat-games-item")), __method__, self)
        return ImpulseFeaturedProductList.new(tag, self)
    end

end
