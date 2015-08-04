# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to searching and search results.
#
# This module exists to provide an abstraction layer for
# Impulse test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module ImpulseSearchFinder

	#Returns the search button.
	def search_button
		$tracer.trace(__method__)
		# unit_test_no_generate: search_button, input.className(create_ats_regex_string("ats-search-button"))
		return ToolTag.new(input.className(create_ats_regex_string("ats-search-button")), __method__, self)
	end

  # Returns the "Best Sellers" tab.
  def best_sellers_tab
    $tracer.trace(__method__)
    # unit_test_no_generate: best_sellers_tab, a.className(create_ats_regex_string("ats-bestsellers-tab"))
    tag = ToolTag.new(a.className(create_ats_regex_string("ats-bestsellers-tab")), __method__, self)
    return tag
  end

  # Returns the "Best Sellers" list.
  def best_sellers_list
    $tracer.trace(__method__)
    # Note this only finds the list of "imgBorders", not the list items
    # that we really want. That's because the current page implementation
    # does not allow for the specificity we need. We handle actually returning
    # the list item to the user in the "at" method in ImpulseTabbedProductList.

    # unit_test_no_generate: best_sellers_list, li.className(create_ats_regex_string("ats-bestsellers")).find.div.className(create_ats_regex_string("imgBorder")); ImpulseTabbedProductList
    tag = ToolTag.new(li.className(create_ats_regex_string("ats-bestsellers")).find.div.className(create_ats_regex_string("imgBorder")), __method__, self)
    return ImpulseTabbedProductList.new(tag, self)
  end

  # Returns the "Available Now" tab.
  def available_now_tab
    $tracer.trace(__method__)
    # unit_test_no_generate: available_now_tab, a.className(create_ats_regex_string("ats-availablenow-tab"))
    tag = ToolTag.new(a.className(create_ats_regex_string("ats-availablenow-tab")), __method__, self)
    return tag
  end

  # Returns the "Available Now" list.
  def available_now_list
    $tracer.trace(__method__)
    # Note this only finds the list of "imgBorders", not the list items
    # that we really want. That's because the current page implementation
    # does not allow for the specificity we need. We handle actually returning
    # the list item to the user in the "at" method in ImpulseTabbedProductList.

    # unit_test_no_generate: available_now_list, li.className(create_ats_regex_string("ats-availablenow")).find.div.className(create_ats_regex_string("imgBorder")); ImpulseTabbedProductList
    tag = ToolTag.new(li.className(create_ats_regex_string("ats-availablenow")).find.div.className(create_ats_regex_string("imgBorder")), __method__, self)
    return ImpulseTabbedProductList.new(tag, self)
  end

  # Returns the "Coming Soon" tab.
  def coming_soon_tab
    $tracer.trace(__method__)
    # unit_test_no_generate: coming_soon_tab, a.className(create_ats_regex_string("ats-comingsoon-tab"))
    tag = ToolTag.new(a.className(create_ats_regex_string("ats-comingsoon-tab")), __method__, self)
    return tag
  end

  # Returns the "Coming Soon" list.
  def coming_soon_list
    $tracer.trace(__method__)
    # Note this only finds the list of "imgBorders", not the list items
    # that we really want. That's because the current page implementation
    # does not allow for the specificity we need. We handle actually returning
    # the list item to the user in the "at" method in ImpulseTabbedProductList.

    # unit_test_no_generate: coming_soon_list, li.className(create_ats_regex_string("ats-comingsoon")).find.div.className(create_ats_regex_string("imgBorder")); ImpulseTabbedProductList
    tag = ToolTag.new(li.className(create_ats_regex_string("ats-comingsoon")).find.div.className(create_ats_regex_string("imgBorder")), __method__, self)
    return ImpulseTabbedProductList.new(tag, self)
  end

  # Returns the "On Sale" tab.
  def on_sale_tab
    $tracer.trace(__method__)
    # unit_test_no_generate: on_sale_tab, a.className(create_ats_regex_string("ats-onsale-tab"))
    tag = ToolTag.new(a.className(create_ats_regex_string("ats-onsale-tab")), __method__, self)
    return tag
  end

  # Returns the "On Sale" list.
  def on_sale_list
    $tracer.trace(__method__)
    # Note this only finds the list of "imgBorders", not the list items
    # that we really want. That's because the current page implementation
    # does not allow for the specificity we need. We handle actually returning
    # the list item to the user in the "at" method in ImpulseTabbedProductList.
    # unit_test_no_generate: on_sale_list, li.className(create_ats_regex_string("ats-onsale")).find.div.className(create_ats_regex_string("imgBorder")); ImpulseTabbedProductList
    tag = ToolTag.new(li.className(create_ats_regex_string("ats-onsale")).find.div.className(create_ats_regex_string("imgBorder")), __method__, self)
    return ImpulseTabbedProductList.new(tag, self)
  end
end
