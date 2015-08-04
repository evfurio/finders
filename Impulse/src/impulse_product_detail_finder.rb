# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to the product details page.
#
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseProductDetailFinder

    # Returns the add to cart button.
    def add_to_cart_button
        $tracer.trace(__method__)
        # unit_test_no_generate: add_to_cart_button, a.className(create_ats_regex_string("ats-add-to-cart-button"))
        return ToolTag.new(a.className(create_ats_regex_string("ats-add-to-cart-button")), __method__, self)
    end

    # Returns the new releases panel.
    def new_releases_panel
        $tracer.trace(__method__)
        # unit_test_no_generate: new_releases_panel, section.id("newreleases")
        return ToolTag.new(section.id("newreleases"), __method__, self)
    end

    # Returns the news article data label.
    def news_article_date_label
        # unit_test_no_generate: news_article_date_label, article.className("basic").find.h2
        $tracer.trace(__method__)
        return ToolTag.new(article.className("basic").find.h2, __method__, self)
    end

	# Returns the product header label.
    def product_header_label
        # unit_test_no_generate: product_header_label, h1.className(create_ats_regex_string("ats-product-title"))
        $tracer.trace(__method__)
        return ToolTag.new(h1.className(create_ats_regex_string("ats-product-title")), __method__, self)
    end

    # Returns the product publisher label.
    def product_publisher_label
        # unit_test_no_generate: product_publisher_label, h2.className("ats-product-publisher")
        $tracer.trace(__method__)
        return ToolTag.new(h2.className("ats-product-publisher"), __method__, self)
    end

    # Returns the eula panel.
    def eula_panel
        # unit_test_no_generate: eula_panel, div.className(create_ats_regex_string("ats-eula-panel")); ImpulseEulaPanel
        $tracer.trace(__method__)
        return ImpulseEulaPanel.new(ToolTag.new(div.className(create_ats_regex_string("ats-eula-panel")), __method__, self), self)
    end
end
