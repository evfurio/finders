# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#unit_test_no_generate: find_a_store_link, a.className(create_ats_regex_string("ats-findstore"))
#unit_test_no_generate: events_link, a.id("/lnkStoreEvents$/")
#unit_test_no_generate: weekly_ad_link, a.className(create_ats_regex_string("ats-weeklyad"))
#unit_test_no_generate: gift_cards_link, a.className(create_ats_regex_string("ats-giftcard"))
#unit_test_no_generate: welcome_label, li.className(create_ats_regex_string("welcome"))
#unit_test_no_generate: my_account_link, a.className(create_ats_regex_string("ats-myaccount"))
#unit_test_no_generate: register_link, a.className(create_ats_regex_string("ats-register"))
#unit_test_no_generate: order_history_link, a.className("omtr-link10")
#unit_test_no_generate: pc_downloads_link, a.className("omtr-link11")
#unit_test_no_generate: wish_list_link, a.className(create_ats_regex_string("ats-wishlist"))
#unit_test_no_generate: gamestop_logo_link, a.className(create_ats_regex_string("ats-logo"))
#unit_test_no_generate: kongregate_logo_link, a.className(create_ats_regex_string("konglogo"))
#unit_test_no_generate: gameinformer_logo_link, a.className(create_ats_regex_string("gilogo"))
#unit_test_no_generate: powerup_rewards_join_today_link, a.className(create_ats_regex_string("purContent"))
#unit_test_no_generate: my_cart_button, a.className(create_ats_regex_string("ats-cartbtn"))
#unit_test_no_generate: search_field, input.className(create_ats_regex_string("ats-searchfield"))
#unit_test_no_generate: search_button, input.className(create_ats_regex_string("ats-searchbtn"))
#unit_test_no_generate: log_in_link, a.className(create_ats_regex_string("ats-login"))
#unit_test_no_generate: log_out_link, a.className(create_ats_regex_string("ats-logout"));;self
#unit_test_no_generate: log_in_log_out_link, div.className("ats-loginlink").find.a;;self
#unit_test_no_generate: account_name, span.id("/lblFirstName$/");;self
#unit_test_no_generate: swap_language_link, a.id("/lnkLanguageSwap$/")
#unit_test_no_generate: xbox_360_header_menu, a.className(create_ats_regex_string("ats-xbox360menu")).parent("li").div.find.h3;GameStopMegaMenuHeaderMenu
#unit_test_no_generate: ps3_header_menu, a.className(create_ats_regex_string("ats-ps3menu")).parent("li").div.find.h3;GameStopMegaMenuHeaderMenu
#unit_test_no_generate: pc_header_menu, a.className(create_ats_regex_string("ats-pcmenu")).parent("li").div.find.h3;GameStopMegaMenuHeaderMenu
#unit_test_no_generate: wii_header_menu, a.className(create_ats_regex_string("ats-wiimenu")).parent("li").div.find.h3;GameStopMegaMenuHeaderMenu
#unit_test_no_generate: _3ds_header_menu, a.className(create_ats_regex_string("ats-3dsmenu")).parent("li").div.find.h3;GameStopMegaMenuHeaderMenu
#unit_test_no_generate: psp_header_menu, a.className(create_ats_regex_string("ats-pspmenu")).parent("li").div.find.h3;GameStopMegaMenuHeaderMenu
#unit_test_no_generate: psvita_header_menu, a.className("/ats-psvitamenu/").parent("li").div.find.h3;GameStopMegaMenuHeaderMenu
#unit_test_no_generate: sign_up_for_deals_link, a.href("/NewsletterSignUp$/")

# == Overview
# Module contains Header and Footer finders.
module GameStopHeaderFooterFinder

  # Returns the Cart Badge From Header
  def cart_badge
    $tracer.trace(__method__)
    return ToolTag.new(span.id("cartbadge"), __method__)
  end

  # Returns "find a store" link.
  def find_a_store_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-findstore")), __method__)
  end

  # Returns "Events" link.
  # Depreciated with new header US
  def events_link
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/lnkStoreEvents$/"), __method__)
  end

  # Returns "Weekly Ad" link.
  def weekly_ad_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-weeklyad")), __method__)
  end

  # Returns "Gift Cards" link.
  def gift_cards_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-giftcard")), __method__)
  end

  # Returns "Welcome, ???" label.
  # Will be depreciated with new header
  def welcome_label
    $tracer.trace(__method__)
    return ToolTag.new(li.className(create_ats_regex_string("welcome")), __method__)
  end

  # Returns "My Account" link.
  def my_account_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-myaccount")), __method__)
  end

  # Returns "Login" link from the header, no different than log_in_link
  def register_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-register")), __method__)
  end

  # Returns "Order History" link.
  def order_history_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-orderhist")), __method__)
  end

  # Returns "My PC Downloads" link.
  def pc_downloads_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className("omtr-link11"), __method__)
  end

  # Returns "Wish List" link.
  def wish_list_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-wishlist")), __method__)
  end

  # Returns "GameStop" logo link.
  def gamestop_logo_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-logo")), __method__)
  end

  # Returns "KONGREGATE" logo link.
  def kongregate_logo_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("konglogo")), __method__)
  end

  # Returns "gameinformer" logo link.
  def gameinformer_logo_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("gilogo")), __method__)
  end

  # Returns "POWERUP REWARDS Join Today" link.
  def powerup_rewards_join_today_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("purContent")), __method__)
  end

  # Returns the "Xbox 360" menu, including the ability to access fly out menu
  # items, as well as the link to click the menu.
  def xbox_360_menu
    $tracer.trace(__method__)
    link_tag = a.className(create_ats_regex_string("ats-xbox360menu"))
    menu_tag = div.id("mm_xbox360")
    return GameStopProductLinkItem.new(ToolTag.new(link_tag, __method__), ToolTag.new(menu_tag, __method__))
  end

  # Returns the "PS3" menu, including the ability to access fly out menu
  # items, as well as the link to click the menu.
  def ps3_menu
    $tracer.trace(__method__)
    link_tag = a.className(create_ats_regex_string("ats-ps3menu"))
    menu_tag = div.id("mm_ps3")
    return GameStopProductLinkItem.new(ToolTag.new(link_tag, __method__), ToolTag.new(menu_tag, __method__))
  end

  # Returns the "PC" menu, including the ability to access fly out menu
  # items, as well as the link to click the menu.
  def pc_menu
    $tracer.trace(__method__)
    link_tag = a.className(create_ats_regex_string("ats-pcmenu"))
    menu_tag = div.id("mm_pc")
    return GameStopProductLinkItem.new(ToolTag.new(link_tag, __method__), ToolTag.new(menu_tag, __method__))
  end

  # Returns the "Wii" menu, including the ability to access fly out menu
  # items, as well as the link to click the menu.
  def wii_menu
    $tracer.trace(__method__)
    link_tag = a.className(create_ats_regex_string("ats-wiimenu"))
    menu_tag = div.id("mm_wii")
    return GameStopProductLinkItem.new(ToolTag.new(link_tag, __method__), ToolTag.new(menu_tag, __method__))
  end

  # Returns the "3DS" menu, including the ability to access fly out menu
  # items, as well as the link to click the menu.
  def _3ds_menu
    $tracer.trace(__method__)
    link_tag = a.className(create_ats_regex_string("ats-3dsmenu"))
    menu_tag = div.id("mm_3ds")
    return GameStopProductLinkItem.new(ToolTag.new(link_tag, __method__), ToolTag.new(menu_tag, __method__))
  end

  # Returns the "PSP" menu, including the ability to access fly out menu
  # items, as well as the link to click the menu.
  def psp_menu
    $tracer.trace(__method__)
    link_tag = a.className(create_ats_regex_string("ats-pspmenu"))
    menu_tag = div.id("mm_psp")
    return GameStopProductLinkItem.new(ToolTag.new(link_tag, __method__), ToolTag.new(menu_tag, __method__))
  end

  # Returns the "Other Systems" menu, including the ability to access fly out menu
  # items, as well as the link to click the menu.
  def other_systems_menu
    $tracer.trace(__method__)
    link_tag = a.id("all_link")
    menu_tag = div.className(create_ats_regex_string("mm_other"))
    return GameStopProductLinkItem.new(ToolTag.new(link_tag, __method__), ToolTag.new(menu_tag, __method__))
  end

  # Returns "My Cart" button.
  def my_cart_button
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-cartbtn")), __method__)
  end

  # Returns the search field.
  def search_field()
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-searchfield")), __method__)
  end

  # Returns the "Search" button.
  def search_button()
    $tracer.trace(__method__)
    return ToolTag.new(input.className(create_ats_regex_string("ats-searchbtn")), __method__)
  end

  # Return the "Log In / Register" link.
  def log_in_link()
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-login")), __method__)
  end

  # Returns the "Log Out" link.
  def log_out_link()
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-logout")), __method__, self)
  end

  # Returns "Log In" OR "Log Out" link.  Use only if resulting action outcome does not matter.
  def log_in_log_out_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("ats-loginlink").find.a, __method__, self)
  end

  #New header only 12-3-2012
  def account_name
    $tracer.trace(__method__)
    #return ToolTag.new(span.id("/lblFirstName$/"), __method__, self)
    return ToolTag.new(span.className(create_ats_regex_string("accountname")), __method__, self)
  end

  # Returns the link on Canadian sites for English/Francais
  def swap_language_link
    $tracer.trace(__method__)
    return ToolTag.new(a.id("/lnkLanguageSwap$/"), __method__)
  end

  # Finder to get all h3 header tag values under the Xbox 360 ATS menu tag
  def xbox_360_header_menu
    $tracer.trace(__method__)
    return GameStopMegaMenuHeaderMenu.new(ToolTag.new(a.className(create_ats_regex_string("ats-xbox360menu")).parent("li").div.find.h3, __method__))
  end

  # Finder to get all h3 header tag values under the PS3 ATS menu tag
  def ps3_header_menu
    $tracer.trace(__method__)
    return GameStopMegaMenuHeaderMenu.new(ToolTag.new(a.className(create_ats_regex_string("ats-ps3menu")).parent("li").div.find.h3, __method__))
  end

  # Finder to get all h3 header tag values under the PC ATS menu tag
  def pc_header_menu
    $tracer.trace(__method__)
    return GameStopMegaMenuHeaderMenu.new(ToolTag.new(a.className(create_ats_regex_string("ats-pcmenu")).parent("li").div.find.h3, __method__))
  end

  # Finder to get all h3 header tag values under the Wii ATS menu tag
  def wii_header_menu
    $tracer.trace(__method__)
    return GameStopMegaMenuHeaderMenu.new(ToolTag.new(a.className(create_ats_regex_string("ats-wiimenu")).parent("li").div.find.h3, __method__))
  end

  # Finder to get all h3 header tag values under the 3DS ATS menu tag
  def _3ds_header_menu
    $tracer.trace(__method__)
    return GameStopMegaMenuHeaderMenu.new(ToolTag.new(a.className(create_ats_regex_string("ats-3dsmenu")).parent("li").div.find.h3, __method__))
  end

  # Finder to get all h3 header tag values under the PSP ATS menu tag
  def psp_header_menu
    $tracer.trace(__method__)
    return GameStopMegaMenuHeaderMenu.new(ToolTag.new(a.className(create_ats_regex_string("ats-pspmenu")).parent("li").div.find.h3, __method__))
  end

  # Finder to get all h3 header tag values under the PSVita ATS menu tag
  def psvita_header_menu
    $tracer.trace(__method__)
    return GameStopMegaMenuHeaderMenu.new(ToolTag.new(a.className("/ats-psvitamenu/").parent("li").div.find.h3, __method__))
  end

  # Returns "Sign Up for Deals" link.
  def sign_up_for_deals_link
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/NewsletterSignUp$/"), __method__)
  end

	# Returns "Guest / In-store Orders" link.
  def guest_instore_orders_link
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-orderhist-guest")), __method__)
  end

  def store_search_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storesearch-panel")), __method__, self)
  end

  def terms_and_condition
    $tracer.trace(__method__)
    return ToolTag.new(ol.className(create_ats_regex_string("ats-cartridge-contentslotads")).find.a, __method__, self)
  end

  def store_title_brand
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storetitle")).find.a, __method__, self)
  end

  def footer_full_site_link
    $tracer.trace(__method__)
    return ToolTag.new(footer.className(create_ats_regex_string("trackable")).ul.li.find.a, __method__, self)
  end

  def store_map
    $tracer.trace(__method__)
    return ToolTag.new(div.id("mapDiv"), __method__, self)
  end

  def store_detail
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storedetails")), __method__, self)
  end

  def store_address
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storeaddress")), __method__, self)
  end

  def store_phone
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storephone")), __method__, self)
  end


end

