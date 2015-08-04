# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution. Also, don't put it in your nose.

#unit_test_no_generate: product_availability_ships_in_24_hours_link, a("/Usually ships in 24 hours/")
#unit_test_no_generate: product_list, div.className("products").child("div").with("className", "/^product/");GameStopProductList;self
#unit_test_no_generate: pre_release_link, a("/PickUp@Store \\\(\\\d+\\\)/")
#unit_test_no_generate: pickup_at_store_link, a("/PickUp@Store \\\(\\\d+\\\)/")
#unit_test_no_generate: available_for_download_link, a.with.innerText("/Available for Download \\(\\d+\\)/")
# unit_test: search_result_section, div.className("/result_count/")
# unit_test: best_sellers_list, div.className(create_ats_regex_string("bestseller_container")).a.id("/BestItem/");GameStopProductContainerList;self
# unit_test: featured_offers_and_deals_list, div.className(create_ats_regex_string("featuredoff")).a.id("/aImageUrl/");GameStopProductContainerList;self
# unit_test: featured_offers_and_deals_text_list, div.className(create_ats_regex_string("featuredoff")).a.id("/aImageTitleUrl/");GameStopProductContainerList;self
# unit_test: view_more_offers_list, div.className(create_ats_regex_string("viewmore")).a;GameStopProductContainerList;self
# unit_test: whats_hot_list, div.className(create_ats_regex_string("thehotness")).a.id("/aImageUrl/");GameStopProductContainerList;self
# unit_test: recommended_for_you_list, div.className(create_ats_regex_string("scrollshelf")).div.className("item");GameStopProductContainerList;self
# unit_test: xbox360_best_sellers_list, div.className(create_ats_regex_string("recommend")).a.id("/itemAnchor/");GameStopProductContainerList;self
# unit_test: hops_pickup_at_store_link, a.className(create_ats_regex_string("ats-hops-pickup-lnk"))

# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to searching for products.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopSearchFinder

    # Returns the link that filters by products that will ship in 24 hours.
    def product_availability_ships_in_24_hours_link()
        $tracer.trace(__method__)
        return ToolTag.new(a("/Usually ships in 24 hours/"), __method__)
    end

    # Returns the list of products (GameStopProductList), typically from the
    # results of a search.
    def product_list()
        $tracer.trace(__method__)
        return GameStopProductList.new(ToolTag.new(div.className(create_ats_regex_string("products")).div.className("/^product$/"), __method__), self)
    end

    # Returns the overlay/dropdown for type-ahead in the search field. It causes
    # the overlay to display by triggering a "keydown".
    def search_field_overlay
        $tracer.trace(__method__)
        search_field.trigger("keydown")
        return GameStopSearchOverlay.new(ToolTag.new(ul.className("/ui-autocomplete/"), __method__))
    end

    # Returns the "breadcrumbs" label (e.g. Home / View All / Xbox 360)
    def breadcrumbs_label(text = nil)
        $tracer.trace(__method__)
        tag = div.className("/results_header/")
        if(text.nil?)
            return ToolTag.new(tag.find.div, __method__)
        else
            return ToolTag.new(tag.find.div(text), __method__)
        end
    end

    # Returns the link that filters by products that are in pre-release.
    def pre_release_link()
        $tracer.trace(__method__)
        return ToolTag.new(a("/PickUp@Store \\\(\\\d+\\\)/"), __method__)
    end

    # Returns the pickup at store link
    def pickup_at_store_link()
        $tracer.trace(__method__)
        return ToolTag.new(a("/PickUp@Store \\\(\\\d+\\\)/"), __method__)
    end

    # Returns the download now link
    def available_for_download_link
        $tracer.trace(__method__)
        return ToolTag.new(a.with.innerText("/Available for Download \\(\\d+\\)/"), __method__)
    end

    # Returns the result_count of the item searched
    def search_result_section
      $tracer.trace(__method__)
      return ToolTag.new(div.className("/result_count$/"), __method__, self)
    end

    # Returns the header for the no search results cartridge with recommendations
    def search_no_result_header
      $tracer.trace(__method__)
      return ToolTag.new(div.className("/no_results_header/"), __method__, self)
    end

    # Return Best Sellers List
    def best_sellers_list
      $tracer.trace(__method__)
      return GameStopProductContainerList.new(ToolTag.new(div.className(create_ats_regex_string("bestseller_container")).a.id("/BestItem/"), __method__), self)
    end

    # Return Featured Offers and Deals List
    def featured_offers_and_deals_list
      $tracer.trace(__method__)
      return GameStopProductContainerList.new(ToolTag.new(div.className(create_ats_regex_string("featuredoff")).a.id("/aImageUrl/"), __method__), self)
    end

    def featured_offers_and_deals_text_list
      $tracer.trace(__method__)
      return GameStopProductContainerList.new(ToolTag.new(div.className(create_ats_regex_string("featuredoff")).a.id("/aImageTitleUrl/"), __method__), self)
    end

    def view_more_offers_list
      $tracer.trace(__method__)
      return GameStopProductContainerList.new(ToolTag.new(div.className(create_ats_regex_string("viewmore")).a, __method__), self)
    end

    def whats_hot_list
      $tracer.trace(__method__)
      return GameStopProductContainerList.new(ToolTag.new(div.className(create_ats_regex_string("thehotness")).a.id("/aImageUrl/"), __method__), self)
    end

    def recommended_for_you_list
      $tracer.trace(__method__)
      return GameStopProductContainerList.new(ToolTag.new(div.className(create_ats_regex_string("scrollshelf")).div.className("item"), __method__), self)
    end

    def xbox360_best_sellers_list
      $tracer.trace(__method__)
      return GameStopProductContainerList.new(ToolTag.new(div.className(create_ats_regex_string("recommend")).a.id("/itemAnchor/"), __method__), self)
    end

    # Returns the Pick Up At Store link from the first buy box
    def hops_pickup_at_store_link
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-hops-pickup-lnk")), __method__)
    end

    # Returns store events header
    def store_events_header
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-storeeventslist")), __method__,self)
    end

    def store_event
      $tracer.trace(__method__)
      return ToolTag.new(div.className(create_ats_regex_string("ats-storeevent")).find.a, __method__, self)
    end

  def store_locator_offers_header
    $tracer.trace(__method__)
    return ToolTag.new(h2.className(create_ats_regex_string("ats-storelocatoroffers-header")), __method__,self)
  end

end
