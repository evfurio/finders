module GameStopRespMobileHeaderFinder

  # Returns mgs_header_logo
  def mgs_header_logo
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-headerLogo")).img, __method__)
	end

  # Returns mgs_hdr_mobile_hamburger
  def mgs_hdr_mobile_hamburger
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-mobileHamburger")), __method__)
  end


  # Returns mgs_hdr_tabnav_list
  def mgs_hdr_tabnav_list
    $tracer.trace(__method__)
    return ToolTag.new(ul.className(create_ats_regex_string("ats-tabletNavList")).li, __method__)
  end

  # Returns mgs_hdr_tabnav_guest_lnk
  def mgs_hdr_tabnav_guest_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletNav-guest")), __method__)
  end

  # Returns mgs_hdr_tabnav_giftcards_lnk
  def mgs_hdr_tabnav_giftcards_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletNav-giftCards")), __method__)
  end

  # Returns mgs_hdr_tabnav_cart_lnk
  def mgs_hdr_tabnav_cart_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletNav-cart")), __method__)
  end

      # Returns mgs_hdr_tabnav_cart_img
      def mgs_hdr_tabnav_cart_img
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-tabletNav-cart")).div.className("/header-cart/"), __method__)
      end

  # Returns mgs_hdr_tabnav_stores_lnk
  def mgs_hdr_tabnav_stores_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletNav-stores")), __method__)
  end

      # Returns mgs_hdr_tabnav_stores_img
      def mgs_hdr_tabnav_stores_img
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-tabletNav-stores")).div.className("/header-stores/"), __method__)
      end

  # Returns mgs_hdr_tabnav_search_section
  def mgs_hdr_tabnav_search_section
    $tracer.trace(__method__)
    return ToolTag.new(li.className(create_ats_regex_string("ats-tabletNavSearch")), __method__)
  end

  # Returns mgs_hdr_tabnav_search_input
  def mgs_hdr_tabnav_search_input
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/search-tablet-input/"), __method__)
  end


  # Returns mgs_hdr_mobnav_list
  def mgs_hdr_mobnav_list
    $tracer.trace(__method__)
    return ToolTag.new(ul.className(create_ats_regex_string("ats-mobileNavList")).li, __method__)
  end

  # Returns mgs_hdr_mobnav_trade_lnk
  def mgs_hdr_mobnav_trade_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileNav-trade")), __method__)
  end

      # Returns mgs_hdr_mobnav_trade_img
      def mgs_hdr_mobnav_trade_img
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-mobileNav-trade")).div.className("/header-trade/"), __method__)
      end

  # Returns mgs_hdr_mobnav_cart_lnk
  def mgs_hdr_mobnav_cart_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileNav-cart")), __method__)
  end

      # Returns mgs_hdr_mobnav_cart_img
      def mgs_hdr_mobnav_cart_img
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-mobileNav-cart")).div.className("/header-cart/"), __method__)
      end

  # Returns mgs_hdr_mobnav_stores_lnk
  def mgs_hdr_mobnav_stores_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileNav-stores")), __method__)
  end

      # Returns mgs_hdr_mobnav_stores_img
      def mgs_hdr_mobnav_stores_img
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-mobileNav-stores")).div.className("/header-stores/"), __method__)
      end

  # Returns mgs_hdr_mobnav_search_lnk
  def mgs_hdr_mobnav_search_lnk
    $tracer.trace(__method__)
    return ToolTag.new(li.className(create_ats_regex_string("ats-mobileNavSearch")), __method__)
  end

      # Returns mgs_hdr_mobnav_search_img
      def mgs_hdr_mobnav_search_img
        $tracer.trace(__method__)
        return ToolTag.new(li.className(create_ats_regex_string("ats-mobileNavSearch")).div, __method__)
      end

  # Returns mgs_hdr_mobnav_search_section
  def mgs_hdr_mobnav_search_section
    $tracer.trace(__method__)
    return ToolTag.new(section.id("/frameSearch/"), __method__)
  end

  # Returns mgs_hdr_mobnav_search_input
  def mgs_hdr_mobnav_search_input
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/search-input/"), __method__)
  end


  # MOBILE Menu
  # Returns mgs_hdr_mobmnu_section
  def mgs_hdr_mobmnu_section
    $tracer.trace(__method__)
    return ToolTag.new(section.id("/mobile-menu/"), __method__)
  end

  # Returns mgs_hdr_mobmnu_list
  def mgs_hdr_mobmnu_list
    $tracer.trace(__method__)
    return ToolTag.new(ul.className(create_ats_regex_string("ats-mobileMenuList")).li, __method__)
  end

  # Returns mgs_hdr_mobmnu_signin_lnk
  def mgs_hdr_mobmnu_signin_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMenu-signIn")), __method__)
  end

  # Returns mgs_hdr_mobmnu_shop_lnk
  def mgs_hdr_mobmnu_shop_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMenu-shop")), __method__)
  end
  
	def mgs_hdr_mobmnu_shop_toggle_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileSubMenuToggle-shop")), __method__)
	end
  
	def mgs_hdr_mobmnu_shop_xboxone_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileShopSubMenuItem-xboxOne")), __method__)
	end

	def mgs_hdr_mobmnu_shop_ps4_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileShopSubMenuItem-ps4")), __method__)
	end
	
	def mgs_hdr_mobmnu_shop_xbox360_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileShopSubMenuItem-xbox360")), __method__)
	end
	
	def mgs_hdr_mobmnu_shop_ps3_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileShopSubMenuItem-ps3")), __method__)
	end
	
	def mgs_hdr_mobmnu_shop_wii_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileShopSubMenuItem-wii")), __method__)
	end
	
	def mgs_hdr_mobmnu_shop_3ds_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileShopSubMenuItem-3ds")), __method__)
	end
	
	def mgs_hdr_mobmnu_shop_psvita_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileShopSubMenuItem-psVita")), __method__)
	end
	
	def mgs_hdr_mobmnu_shop_more_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileShopSubMenuItem-more")), __method__)
	end
	
		def mgs_hdr_mobmnu_shop_more_toggle_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileSubMenuToggle-more")), __method__)
		end
	
		def mgs_hdr_mobmnu_shop_more_collectibles_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMoreSubMenuItem-collectibles")), __method__)
		end

		def mgs_hdr_mobmnu_shop_more_accessories_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMoreSubMenuItem-accessories")), __method__)
		end
		
		def mgs_hdr_mobmnu_shop_more_headsets_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMoreSubMenuItem-headsets")), __method__)
		end
		
		def mgs_hdr_mobmnu_shop_more_phones_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMoreSubMenuItem-phones")), __method__)
		end

		def mgs_hdr_mobmnu_shop_more_tablets_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMoreSubMenuItem-tablets")), __method__)
		end

		def mgs_hdr_mobmnu_shop_more_mediaplayers_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMoreSubMenuItem-mediaPlayers")), __method__)
		end

  # Returns mgs_hdr_mobmnu_deals_lnk
  def mgs_hdr_mobmnu_deals_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMenu-deals")), __method__)
  end
 
	def mgs_hdr_mobmnu_deals_toggle_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileSubMenuToggle-deals")), __method__)
	end

	def mgs_hdr_mobmnu_deals_hotdeals_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileDealsSubMenuItem-hotDeals")), __method__)
	end
 
	def mgs_hdr_mobmnu_deals_preowned_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileDealsSubMenuItem-preOwned")), __method__)
	end
  
	def mgs_hdr_mobmnu_deals_bestsellers_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileDealsSubMenuItem-bestSellers")), __method__)
	end
  
	def mgs_hdr_mobmnu_deals_weeklyad_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileDealsSubMenuItem-weeklyAd")), __method__)
	end

	def mgs_hdr_mobmnu_deals_topcategories_lnk
		$tracer.trace(__method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-mobileDealsSubMenuItem-topCategories")), __method__)
	end

		def mgs_hdr_mobmnu_deals_topcat_toggle_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileSubMenuToggle-topCategories")), __method__)
		end
	
		def mgs_hdr_mobmnu_deals_topcat_games_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileTopCategoriesSubMenuItem-games")), __method__)
		end
	
		def mgs_hdr_mobmnu_deals_topcat_electronics_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileTopCategoriesSubMenuItem-electronics")), __method__)
		end
	
		def mgs_hdr_mobmnu_deals_topcat_consoles_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileTopCategoriesSubMenuItem-consoles")), __method__)
		end

		def mgs_hdr_mobmnu_deals_topcat_accessories_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileTopCategoriesSubMenuItem-accessories")), __method__)
		end

		def mgs_hdr_mobmnu_deals_topcat_collectibles_lnk
			$tracer.trace(__method__)
			return ToolTag.new(a.className(create_ats_regex_string("ats-mobileTopCategoriesSubMenuItem-collectibles")), __method__)
		end

  # Returns mgs_hdr_mobmnu_trade_lnk
  def mgs_hdr_mobmnu_trade_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMenu-trade")), __method__)
  end

  # Returns mgs_hdr_mobmnu_pur_lnk
  def mgs_hdr_mobmnu_pur_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMenu-pur")), __method__)
  end

  # Returns mgs_hdr_mobmnu_create_lnk
  def mgs_hdr_mobmnu_pur_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMenu-createAccount")), __method__)
  end
 
  # Returns mgs_hdr_mobmnu_orders_lnk
  def mgs_hdr_mobmnu_orders_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMenu-orders")), __method__)
  end

  # Returns mgs_hdr_mobmnu_gc_lnk
  def mgs_hdr_mobmnu_gc_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMenu-giftCards")), __method__)
  end

  # Returns mgs_hdr_mobmnu_purcc_lnk
  def mgs_hdr_mobmnu_purcc_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-mobileMenu-purcc")), __method__)
  end


  # TABLET Menu
  # Returns mgs_hdr_tabmnu_section
  def mgs_hdr_tabmnu_section
    $tracer.trace(__method__)
    return ToolTag.new(section.id("/tabletMenu/"), __method__)
  end

  # Returns mgs_hdr_tabmnu_list
  def mgs_hdr_tabmnu_list
    $tracer.trace(__method__)
    return MGSFrameTabletMenu.new(ToolTag.new(li.className(create_ats_regex_string("/ats-tabletMenuList/")), __method__), self)
  end

  ### SignIn - Tablet

  # Returns mgs_hdr_tabmnu_signin_lbl
  def mgs_hdr_tabmnu_signin_lbl
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-tab-signInLbl")), __method__)
  end

  # Returns mgs_hdr_tabmnu_myaccount_lbl
  def mgs_hdr_tabmnu_myaccount_lbl
    $tracer.trace(__method__)
    return ToolTag.new(span.className(create_ats_regex_string("ats-tab-MyAcctLbl")), __method__)
  end

  # Returns mgs_hdr_tabmnu_signin_section
  def mgs_hdr_tabmnu_signin_section
    $tracer.trace(__method__)
    return ToolTag.new(ul.className(create_ats_regex_string("ats-tab-signInSection")), __method__)
  end

  # Returns mgs_hdr_tabmnu_signin_btn
  def mgs_hdr_tabmnu_signin_btn
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tab-signInBtn")), __method__)
  end

  # Returns mgs_hdr_tabmnu_createacct_btn
  def mgs_hdr_tabmnu_createacct_btn
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tab-createAcctBtn")), __method__)
  end

  # Returns mgs_hdr_tabmnu_signin_menu
    def mgs_hdr_tabmnu_signin_menu
    $tracer.trace(__method__)
    #return ToolTag.new(li.id("/tablet-signIn/"), __method__)
    return ToolTag.new(li.id(create_ats_regex_string("/tablet-signIn/")), __method__)
  end

  #### Tablet Header Menu
  # Returns tablet shop > xboxOne link triggered
  def mgs_shop_xboxone_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-xboxOne")), __method__)
  end

  # Returns tablet shop > ps4 link triggered
  def mgs_shop_ps4_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-ps4")), __method__)
  end

  # Returns tablet shop > xbox360 link triggered
  def mgs_shop_xbox360_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-xbox360")), __method__)
  end

  # Returns tablet shop > PS3 link triggered
  def mgs_shop_ps3_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-ps3")), __method__)
  end

  # Returns tablet shop > wiiU link triggered
  def mgs_shop_wii_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-wii")), __method__)
  end

  # Returns tablet shop > 3DS link triggered
  def mgs_shop_3ds_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-3ds")), __method__)
  end

  # Returns tablet shop > PS Vita link triggered
  def mgs_shop_psvita_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-psVita")), __method__)
  end


  # Returns tablet shop > more > collectibles link triggered
  def mgs_shop_more_collectibles_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-collectibles")), __method__)
  end

  # Returns tablet shop > more > accessories link triggered
  def mgs_shop_more_accessories_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-accessories")), __method__)
  end

  # Returns tablet shop > more > headsets link triggered
  def mgs_shop_more_headsets_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-headsets")), __method__)
  end

  # Returns tablet shop > more > phones link triggered
  def mgs_shop_more_phones_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-phones")), __method__)
  end

  # Returns tablet shop > more > tablets link triggered
  def mgs_shop_more_tablets_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-tablets")), __method__)
  end

  # Returns tablet shop > more > media players link triggered
  def mgs_shop_more_mediaplayers_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-mediaPlayers")), __method__)
  end

  # Returns tablet deals > hot deals link triggered
  def mgs_deals_hotdeals_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-hotDeals")), __method__)
  end

  # Returns tablet deals > pre-owned link triggered
  def mgs_deals_preowned_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-preOwned")), __method__)
  end

  # Returns tablet deals > best seller link triggered
  def mgs_deals_bestsellers_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-bestSellers")), __method__)
  end

  # Returns tablet deals > weekly ad link triggered
  def mgs_deals_weeklyad_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenu-weeklyAd")), __method__)
  end

  # Returns tablet deals > top categories > games link triggered
  def mgs_deals_topcategories_games_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-games")), __method__)
  end

  # Returns tablet deals > top categories > electronics link triggered
  def mgs_deals_topcategories_electronics_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-electronics")), __method__)
  end

  # Returns tablet deals > top categories > consoles link triggered
  def mgs_deals_topcategories_consoles_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-consoles")), __method__)
  end

  # Returns tablet deals > top categories > accessories link triggered
  def mgs_deals_topcategories_accessories_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-accessories")), __method__)
  end

  # Returns tablet deals > top categories > collectibles link triggered
  def mgs_deals_topcategories_collectibles_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className(create_ats_regex_string("ats-tabletSubMenuItem-collectibles")), __method__)
  end


  ### SignIn - Mobile
  # Returns mgs_hdr_mob_signout_lnk
  def mgs_hdr_mob_signout_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className("ats-mobileMenu-signOut"), __method__)
  end

  # Returns mgs_hdr_mob_signout_lnk
  def mgs_hdr_mob_myaccount_lnk
    $tracer.trace(__method__)
    return ToolTag.new(a.className("ats-mobileMenu-myAccount"), __method__)
  end

end