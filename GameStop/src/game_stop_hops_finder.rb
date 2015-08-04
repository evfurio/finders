# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

# unit_test: hops_product_name_label,  span.id("/ProductNameLabel$/")
# unit_test: hops_product_name_link, div.id("/ProductPanel$/").child("h3").child("a")
# unit_test: hops_finish_button,  a.id("/SubmitButton$/");;self
# unit_test: hops_accepted_page_title,  img.id("/HoldConfirmationHeader$/")
# unit_test: hops_accepted_page_message,  div.id("sentInfo").find.p.className("main")
# unit_test: hops_accepted_page_home_link,  a.id("/BackToHomePageLink$/")
# unit_test: hops_store_list, table.id("/searchResults/").tbody.tr;GameStopHopsStoreList;self
# unit_test: hops_zip_code_search_field, input.id("/EnterZipTextBox$/")
# unit_test: hops_zip_code_search_button, a.id("/FindZipButton$/");;self
# unit_test: hops_alternate_store_popup_panel, div.id("/HopsAlternateStore_pnlPopUp$/");HopsAlternateStorePopupPanel;self
# unit_test: hops_pur_member_radio_button, input.id("/EdgeAuthenticationTypeRadioButton/")
# unit_test: hops_pur_not_member_radio_button, input.id("/CCAuthenticationTypeRadioButton/")
# unit_test: hops_pickup_at_store_link, a.className(create_ats_regex_string("ats-hops-pickup-lnk"))
# unit_test: hops_no_stores_popup, div.className("modalPopup")
# unit_test: hops_no_stores_button, a.id("/ClosePopupButton/")
# unit_test: hops_pur_textbox, input.id("/LoyaltyCardNumberTextBox/")
# unit_test: hops_pickup_at_store_tooltip, ul.className("/picklist/")
# unit_test: hops_not_member_panel, div.id("/notmember/")
# unit_test: hops_cc_dropdown, jquery("div[class='cc']>select, select[id~='CCTypesDropDown']")
# unit_test: hops_cc_textbox, jquery("div[class='ccnumber']>input, input[id~='CCNumberTextBox']")
# unit_test: hops_pur_validator, span.id("/MemberNumberCustomValidator/")
# unit_test: hops_cc_validator, span.id("/CCNumberCustomValidator/")

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to the shopping cart.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopHopsFinder
  # Returns the product name label in the HOPS process.
  def hops_product_name_label
    $tracer.trace(__method__)
    return ToolTag.new(span.id("/ProductNameLabel$/"), __method__)
  end

  # Returns the product_name_link.
  def hops_product_name_link
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/ProductPanel$/").child("h3").child("a"), __method__)
  end

  # Returns the finish button on the HOPS page.
  def hops_finish_button
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/SubmitButton/"), __method__, self)
  end

  # Returns the page title on the Accepted page,
  # it is an image instead text.
  def hops_accepted_page_title
    $tracer.trace(__method__)
    return ToolTag.new(img.id("/HoldConfirmationHeader$/"), __method__)
  end

  def hops_accepted_page_h1
    $tracer.trace(__method__)
    return ToolTag.new(h1.className("main_sent"), __method__)
  end

  # Returns the message to the user on the Accepted page.
  def hops_accepted_page_message
    $tracer.trace(__method__)
    return ToolTag.new(div.id("sentInfo").find.p.className("main"), __method__)
  end

  # Returns the home page link on the Accepted page.
  def hops_accepted_page_home_link
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/BackToHomePageLink$/"), __method__)
  end

  # Returns the list of stores (GameStopHopsStoreList)
  # found from the zip code search.
  def hops_store_list
    $tracer.trace(__method__)
    #return GameStopHopsStoreList.new(jquery("table[id~='searchResults']> tbody > tr"))
    return GameStopHopsStoreList.new(table.id("/searchResults/").tbody.tr, __method__)
  end

  def store_locator_store_list
    $tracer.trace(__method__)
    return GameStopHopsStoreList.new(ToolTag.new(div.className(create_ats_regex_string("ats-storeresult-panel")), __method__), self)
  end

  # Returns the zip code search field on the Store Detail page.
  def store_zip_code_search_field
    $tracer.trace(__method__)
    return ToolTag.new(input.className("ats-storesearch"), __method__)
  end

  def store_zip_code_search_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("ats-searchstoredetail-button"), __method__)
  end

  # Returns the zip code search field on the Inventory Search page.
  def hops_zip_code_search_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/EnterZipTextBox/"), __method__)
  end

  def store_locator_zip_code_search_field
    $tracer.trace(__method__)
    return ToolTag.new(input.className("ats-storesearch-input"), __method__)
  end

  # Returns the zip code search button on the Inventory Search page.
  def hops_zip_code_search_button
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/FindZipButton$/"), __method__, self)
  end

  def store_locator_zip_code_search_button
    $tracer.trace(__method__)
    return ToolTag.new(button.className("ats-storesearch-button"), __method__, self)
  end

  # Returns the Alternative Store popup panel.
  def hops_alternate_store_popup_panel
    $tracer.trace(__method__)
    return HopsAlternateStorePopupPanel.new(ToolTag.new(div.id("/HopsAlternateStore_pnlPopUp$/"), __method__, self), self)
  end

  # Returns the PUR member radio button.
  def hops_pur_member_radio_button
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/EdgeAuthenticationTypeRadioButton/"), __method__, self)
  end

  # Returns the NOT PUR member radio button.
  def hops_pur_not_member_radio_button
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/CCAuthenticationTypeRadioButton/"), __method__, self)
  end

  # Returns the Pick Up At Store button form the search list for products that are not available online
  def nfs_pickup_at_store_button
    $tracer.trace(__method__)
    return ToolTag.new(img.className(create_ats_regex_string("ats-nfs-pickup-btn")), __method__)
  end

  # Returns the Pick Up At Store link from the first buy box
  def hops_pickup_at_store_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-hops-pickup-lnk")), __method__)
  end

  # Returns the Pick Up At Store link from the NEW buy box
  def hops_pickup_at_store_new_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("buy1").a.id("/PickUpAtStore$/"), __method__, self)
    #return ToolTag.new(a.id("/avail_trigger/"), __method__, self)
  end

  # Returns the Pick Up At Store link from the PRE-OWNED buy box
  def hops_pickup_at_store_used_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("buy2").a.id("/PickUpAtStore$/"), __method__, self)
    #return ToolTag.new(a.id("/avail_trigger/"), __method__, self)
  end

  # Returns the NO Stores popup panel.
  def hops_no_stores_popup
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/NoStoresFoundModalPopup_PopupPanel/"), __method__, self)
  end

  # Returns the NO Stores "OK" button from popup panel.
  def hops_no_stores_button
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/NoStoresFoundModalPopup_PopupPanel/").find.a, __method__, self)
  end

  # Returns the PUR textbox.
  def hops_pur_textbox
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/LoyaltyCardNumberTextBox/"), __method__, self)
  end

  # Returns the PUR textbox.
  def hops_pickup_at_store_tooltip
    $tracer.trace(__method__)
    return ToolTag.new(ul.className("/picklist/"), __method__, self)
  end

  # Returns the not member panel.
  def hops_not_member_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.id("/notmember/"), __method__, self)
  end

  # Returns the CC dropdown type.
  def hops_cc_dropdown
    $tracer.trace(__method__)
    return ToolTag.new(jquery("div[class='cc']>select, select[id~='CCTypesDropDown']"), __method__, self)
  end

  # Returns the CC number textbox.
  def hops_cc_textbox
    $tracer.trace(__method__)
    return ToolTag.new(jquery("div[class='ccnumber']>input, input[id~='CCNumberTextBox']"), __method__, self)
  end

  # Returns the "Enter valid PUR" validator.
  def hops_pur_validator
    $tracer.trace(__method__)
    return ToolTag.new(span.id("/MemberNumberCustomValidator/"), __method__, self)
  end

  # Returns the "Enter valid CC" validator.
  def hops_cc_validator
    $tracer.trace(__method__)
    return ToolTag.new(span.id("/CCNumberCustomValidator/"), __method__, self)
  end

  # Returns the "Find Store" button from GS Checkout
  def hops_find_store_button
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-hops-handling-btn")), __method__)
  end

  # Returns the HOPS availability link in GS Handling page
  def hops_availability_link
    $tracer.trace(__method__)
    return ToolTag.new(span.id("availabilityHOPS"), __method__)
  end

  # Returns the HOPS more information list
  def hops_more_info_list
    $tracer.trace(__method__)
    return ToolTag.new(ul.id("hopsMoreInfo"), __method__)
  end


  ################ Store Page Finders ################

  # Returns store name label
  def store_mall_name
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeheader")).h1, __method__)
  end

  def store_brand
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("storeDetailBrand")), __method__)
  end

  # Returns back to storesearch link
  def back_to_store_search
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-backto-storesearch")), __method__)
  end

  # Returns store search textbox
  def store_search
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-storesearch")), __method__)
  end

  # Returns store details panel
  def store_details
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storedetails")), __method__)
  end

  # Returns store address
  def store_address
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeaddress")), __method__)
  end

  def store_address_detail
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeaddress")).span, __method__, self)
  end

  # Returns store phone
  def store_phone
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storephone")).span, __method__)
  end

  # Returns store hours
  def store_hours
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storehours")).find.tr, __method__)
  end

  # Returns home store image
  def store_home_store_img
    $tracer.trace(__method__)
    return ToolTag.new(img.id(create_ats_regex_string("homeImage")), __method__)
  end

  # Returns home store link
  def store_home_store
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-homestore")), __method__)
  end

  # TODO: get directions image
  # Returns get directions link
  def store_get_directions
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-getdirections")), __method__)
  end

  # TODO: get find trade values
  # Returns find trade values link
  def store_trade_values
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-findtradevalues")), __method__)
  end

  # Returns map locator pin
  def store_map_locator
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("MapPushpinBase")).find.img, __method__)
  end

  # Returns store events header
  def store_events_header
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeeventslist")).h2, __method__)
  end

  # Returns store events
  def store_event
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeevent")).find.a, __method__)
  end

  # Returns store special offers header
  def store_special_offers_header
    $tracer.trace(__method__)
    return ToolTag.new(h2.className(create_ats_regex_string("ats-storespecialoffers")), __method__)
    # return ToolTag.new(div.className("/col-1/").h2, __method__)
  end

  # Returns store offers
  def store_special_offer
    $tracer.trace(__method__)
    return GameStopStoreOfferList.new(ToolTag.new(li.className(create_ats_regex_string("ats-cartridge-offerAd")), __method__),self)
  end

  # Returns google map directions
  def store_directions
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("/dd_routeSummary dd_routeRootSummary/")), __method__)
  end

  # Returns google map directions input a
  def point_a_input
    $tracer.trace(__method__)
    return ToolTag.new(input.id(create_ats_regex_string("MicrosoftMapsDirections_1_WaypointInput3")), __method__)
  end

  # Returns google map directions label a
  def point_a_label
    $tracer.trace(__method__)
    return ToolTag.new(div.id(create_ats_regex_string("MicrosoftMapsDirections_1_WaypointText3")), __method__)
  end

  # Returns google map directions input b
  def point_b_input
    $tracer.trace(__method__)
    return ToolTag.new(input.id(create_ats_regex_string("MicrosoftMapsDirections_1_WaypointInput4")), __method__)
  end

  # Returns google map directions label b
  def point_b_label
    $tracer.trace(__method__)
    return ToolTag.new(div.id(create_ats_regex_string("MicrosoftMapsDirections_1_WaypointText4")), __method__)
  end

  def store_locator_url_script
    $tracer.trace(__method__)
    return ToolTag.new(div.id("navline1").script, __method__)
  end

  def title_page
    $tracer.trace(__method__)
    return ToolTag.new(title, __method__)
  end

  def link_rel
    $tracer.trace(__method__)
    return ToolTag.new(jquery("link[rel='canonical']"),__method__)
  end

  def bing_map_pin
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("MapPushpinBase")), __method__)
  end

  def bing_map_get_direction
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("infobox_divide")), __method__)
  end

  def qualtrics_survey_popup
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("/QSIPopOver/")).find.img, __method__)
  end

  # Returns store address pick up at store
  def pickup_at_store_address
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("address")), __method__)
  end

  # Returns store hours pick up at store
  def pickup_at_store_hours
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("hours")), __method__)
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

  # Returns alternate link
  def alternate_link
    $tracer.trace(__method__)
    return ToolTag.new(jquery("link[rel='alternate']"),__method__)
  end

  # Returns store search header
  def store_search_header
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storesearch-header")).h1, __method__)
  end

  # Returns the Channel Advisor - Order Tracking Pixel function from a javascript
  def order_tracking_pixel
    $tracer.trace(__method__)
    return script.innerText("/isOrderTrackingEnabled/").innerText
  end

  # Returns the Channel Advisor verification (thankyou_fp) from a javascript
  def thank_you_fp
    $tracer.trace(__method__)
    return ToolTag.new(script.src("//t.channeladvisor.com/v2/12019276.js"), __method__)
  end

end
