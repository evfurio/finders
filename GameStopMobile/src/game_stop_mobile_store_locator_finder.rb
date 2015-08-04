# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

module GameStopMobileStoreLocatorFinder

  # Returns Store Locator link.
  def store_locator_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-nav_store_locator_link")), __method__, self)
  end

  # new store locator start
  # Returns Store Locator link.
  def store_locator_search_input
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-storesearch-input")), __method__, self)
  end

  def store_detail_search_input
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-storesearch")), __method__, self)
  end

  # Returns the list of stores
  def store_list
    $tracer.trace(__method__)
    return GameStopMobileStoreList.new(ToolTag.new(div.className(create_ats_regex_string("ats-storeresult-panel")), __method__,self), self)
  end

  def store_locator_search_err_msg
    $tracer.trace(__method__)
    return ToolTag.new(ul.className(create_ats_regex_string("ats-storelist")), __method__, self)
  end

  # Returns store events header
  def store_events_header
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeeventslist")).h2, __method__,self)
  end

  def store_event
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeevent")).find.a, __method__, self)
  end

  # Returns store special offers header
  def store_special_offers_header
    $tracer.trace(__method__)
    return ToolTag.new(h2.className(create_ats_regex_string("ats-storespecialoffers")), __method__,self)
  end

  # Returns store offers
  def store_special_offer
    $tracer.trace(__method__)
    return GameStopStoreOfferList.new(ToolTag.new(li.className(create_ats_regex_string("ats-cartridge-offerAd")), __method__),self)
  end

  # Returns meta name keyword
  def meta_tag_keyword
    $tracer.trace(__method__)
    return ToolTag.new(jquery("meta[name='keyword']"),__method__)
  end

  # Returns meta name description
  def meta_tag_description
    $tracer.trace(__method__)
    return ToolTag.new(jquery("meta[name='description']"),__method__)
  end

  def store_name_header
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeheader")).find.h1, __method__, self)
  end

  def store_name_header_span
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeheader")).find.h1.span, __method__, self)
  end

  def store_search_header
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storesearch-header")).find.h1, __method__, self)
  end

  def store_address
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeaddress")), __method__, self)
  end

  def store_address_detail
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeaddress")).span, __method__, self)
  end

  def store_phone
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storephone")).span, __method__, self)
  end

# Returns store hours
  def store_hours
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storehours")).find.tr, __method__, self)
  end

  def title_page
    $tracer.trace(__method__)
    return ToolTag.new(title, __method__, self)
  end

  # Returns meta name keyword
  def canonical_link
    $tracer.trace(__method__)
    return ToolTag.new(jquery("link[rel='canonical']"),__method__)
  end


  # new store locator end

  # Returns Store Locator link.
  def store_list_button
    $tracer.trace(__method__)
    return ToolTag.new(button.id(create_ats_regex_string("store_list")), __method__, self)
  end

  # Returns Back button
  def go_back_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("go_back")), __method__, self)
  end

  # Returns store Search input
  def store_search_input
    $tracer.trace(__method__)
    return ToolTag.new(input.id(create_ats_regex_string("manual_store_search")), __method__, self)
  end

  # Returns Store list
  def store_locator_list
    $tracer.trace(__method__)
    return GameStopMobileStoreList.new(ToolTag.new(div.id("list_container").ol.li, __method__, self), self)
  end

  # Returns Store map
  def store_locator_map
    $tracer.trace(__method__)
    return ToolTag.new(div.id(create_ats_regex_string("map_canvas")), __method__, self)
  end

  # Returns Store no result
  def store_locator_no_result_message
    $tracer.trace(__method__)
    return ToolTag.new(li.className(create_ats_regex_string("no_result")).find.p, __method__, self)
  end

  # Return Bing Map Pin anchor
  def bing_map_pin
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("MapPushpinBase")), __method__, self)
  end

  # Return Bing Map Pin container
  def bing_map_pin_directions
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("infobox_divide")), __method__, self)
  end

  # Return Bing Map Pin container
  def microsoft_map_drawing
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("MicrosoftMapDrawing")), __method__, self)
  end

  # Return Home Store Toggle container
  def home_store_toggle
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-homestore")), __method__, self)
  end

  # Return Map and List Toggle container
  def map_list_toggle
    $tracer.trace(__method__)
    return ToolTag.new(div.id("mapToggle"), __method__, self)
  end

  # Return Map and List Toggle style container
  def map_list_toggle_style
    $tracer.trace(__method__)
    return ToolTag.new(div.id("mapToggle").span, __method__, self)
  end

  # Return Store result panel container
  def store_results_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeresults-panel")), __method__, self)
  end

  # Return fullsite link tag from foorter
  def footer_fullsite_link
    $tracer.trace(__method__)
    return ToolTag.new(footer.className(create_ats_regex_string("trackable")).ul.li.find.a, __method__, self)
  end

  # Return find store link
  def find_store_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-findstore")), __method__, self)
  end

  # Return store title link
  def store_title_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storetitle")).find.a, __method__, self)
  end

  def footer_links
    $tracer.trace(__method__)
    return ToolTag.new(section.id("footer").find.ul.li, __method__, self)
  end

  #5/4/2015
  # Returns the "Search" button.
  def gs_search_field
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-searchfield")), __method__, self)
  end

  def gs_results_header
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("results_header")), __method__, self)
  end

  def gs_product_info
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("product_info")).find.a, __method__, self)
  end

  # Returns the MyLocation classname
  def bing_my_location_pin
    $tracer.trace(__method__)
    return ToolTag.new(div.className("MyLocation").script, __method__, self)
  end
end

