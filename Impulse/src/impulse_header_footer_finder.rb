# == Overview
# Module contains Header and Footer finders.
module ImpulseHeaderFooterFinder

  # Returns the GameStop logo link.
  def gamestop_logo_pc_downloads_link
    $tracer.trace(__method__)
    # unit_test_no_generate: gamestop_logo_pc_downloads_link, a.with.className(create_ats_regex_string("ats-logo-link"))
    return ToolTag.new(a.with.className(create_ats_regex_string("ats-logo-link")), __method__, self)
  end

  # Returns the "powered by IMPULSE" logo.
  def powered_by_impulse_image
    $tracer.trace(__method__)
    # unit_test_no_generate: powered_by_impulse_image, div.with.className(create_ats_regex_string("page_container")).find.child("img").at(1)
    return ToolTag.new(div.with.className(create_ats_regex_string("page_container")).find.child("img").at(1), __method__, self)
  end

  # Returns the "View Cart" link.
  def view_cart_link
    $tracer.trace(__method__)
    # unit_test_no_generate: view_cart_link, a.with.className(create_ats_regex_string("ats-cart-link"))
    return ToolTag.new(a.with.className(create_ats_regex_string("ats-cart-link")), __method__, self)
  end

	# Returns the "Checkout" link.
	def checkout_link
		$tracer.trace(__method__)
		# unit_test_no_generate: checkout_link, a.className(create_ats_regex_string("ats-checkout-link"))
		return ToolTag.new(a.className(create_ats_regex_string("ats-checkout-link")), __method__, self)
	end

	 # Return the "Genres" menu list.
	def genres_menu_list
		$tracer.trace(__method__)
		# unit_test_no_generate: genres_menu_list, div.className(create_ats_regex_string("ats-genretab")); ImpulseHeaderMenuList
		return ImpulseHeaderMenuList.new(ToolTag.new(div.className(create_ats_regex_string("ats-genretab")), __method__, self), self)
	end

	 # Return the "Publishers" menu list.
	def publishers_menu_list
		$tracer.trace(__method__)
		# unit_test_no_generate: publishers_menu_list, div.className(create_ats_regex_string("ats-pubtab")); ImpulseHeaderMenuList
		return ImpulseHeaderMenuList.new(ToolTag.new(div.className(create_ats_regex_string("ats-pubtab")), __method__, self), self)
	end

	# Return the "Browse By" menu list.
	def browse_by_menu_list
		$tracer.trace(__method__)
		# unit_test_no_generate: browse_by_menu_list, div.className(create_ats_regex_string("ats-browsebytab")); ImpulseHeaderMenuList
		return ImpulseHeaderMenuList.new(ToolTag.new(div.className(create_ats_regex_string("ats-browsebytab")), __method__, self), self)
	end

	# Return the "Forums" menu list.
	def forums_button
		$tracer.trace(__method__)
		# unit_test_no_generate: forums_button, a.className(create_ats_regex_string("ats-forumstab"))
		return ToolTag.new(a.className(create_ats_regex_string("ats-forumstab")), __method__, self)
	end

	# Return the "Support" menu list.
	def support_button
		$tracer.trace(__method__)
		# unit_test_no_generate: support_button, a.className(create_ats_regex_string("ats-supporttab"))
		return ToolTag.new(a.className(create_ats_regex_string("ats-supporttab")), __method__, self)
	end

  # Returns the Part of The GameStop Network logo link.
  def part_of_the_gamestop_network_logo_link
    $tracer.trace(__method__)
    # unit_test_no_generate: part_of_the_gamestop_network_logo_link, a.with.className(create_ats_regex_string("ats-gamestop-network-link"))
    return ToolTag.new(a.with.className(create_ats_regex_string("ats-gamestop-network-link")), __method__, self)
  end

  # Returns the GameStop logo link.
  def gamestop_logo_link
    $tracer.trace(__method__)
    # unit_test_no_generate: gamestop_logo_link, a.with.className(create_ats_regex_string("ats-gamestop-link"))
    return ToolTag.new(a.with.className(create_ats_regex_string("ats-gamestop-link")), __method__, self)
  end

  # Returns "gameinformer" logo link.
  def gameinformer_logo_link
    $tracer.trace(__method__)
    # unit_test_no_generate: gameinformer_logo_link, a.className(create_ats_regex_string("ats-gameinformer-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-gameinformer-link")), __method__, self)
  end

  # Returns "JOLT" logo link.
  def jolt_logo_link
    $tracer.trace(__method__)
    # unit_test_no_generate: jolt_logo_link, a.className(create_ats_regex_string("ats-jolt-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-jolt-link")), __method__, self)
  end

  # Returns "KONGREGATE" logo link.
  def kongregate_logo_link
    $tracer.trace(__method__)
    # unit_test_no_generate: kongregate_logo_link, a.className(create_ats_regex_string("ats-kongregate-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-kongregate-link")), __method__, self)
  end

  # Returns "BuyMyTrinics.com" logo link.
  def buymytronics_logo_link
      $tracer.trace(__method__)
      # unit_test_no_generate: buymytronics_logo_link, a.className(create_ats_regex_string("ats-buymytronics-link"))
      return ToolTag.new(a.className(create_ats_regex_string("ats-buymytronics-link")), __method__, self)
  end

	# Returns "About" label.
	def about_label
		$tracer.trace(__method__)
		# unit_test_no_generate: about_label, li.className(create_ats_regex_string("ats-footer-about"))
		return ToolTag.new(li.className(create_ats_regex_string("ats-footer-about")), __method__, self)
	end

	# Returns "Genres" label.
	def genres_label
		$tracer.trace(__method__)
		# unit_test_no_generate: genres_label, li.className(create_ats_regex_string("ats-footer-genres"))
		return ToolTag.new(li.className(create_ats_regex_string("ats-footer-genres")), __method__, self)
	end

	# Returns "Categories" label.
	def categories_label
		$tracer.trace(__method__)
		# unit_test_no_generate: categories_label, li.className(create_ats_regex_string("ats-footer-categories"))
		return ToolTag.new(li.className(create_ats_regex_string("ats-footer-categories")), __method__, self)
	end

	# Returns "Keep in Touch" label.
	def keep_in_touch_label
		$tracer.trace(__method__)
		# unit_test_no_generate: keep_in_touch_label, li.className(create_ats_regex_string("ats-footer-last"))
		return ToolTag.new(li.className(create_ats_regex_string("ats-footer-last")), __method__, self)
	end

  # Returns "Corporate" link.
  def corporate_link
    $tracer.trace(__method__)
    # unit_test_no_generate: corporate_link, a.className(create_ats_regex_string("ats-corporate-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-corporate-link")), __method__, self)
  end

  # Returns "About Impulse" link.
  def about_impulse_link
    $tracer.trace(__method__)
    # unit_test_no_generate: about_impulse_link, a.className(create_ats_regex_string("ats-about-impulse-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-about-impulse-link")), __method__, self)
  end

  # Returns "Developers" link.
  def developers_link
    $tracer.trace(__method__)
    # unit_test_no_generate: developers_link, a.className(create_ats_regex_string("ats-developers-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-developers-link")), __method__, self)
  end

  # Returns "Developers Tools" link.
  def developers_tools_link
    $tracer.trace(__method__)
    # unit_test_no_generate: developers_tools_link, a.className(create_ats_regex_string("ats-developers-tools-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-developers-tools-link")), __method__, self)
  end

  # Returns "Action" link.
  def action_link
    $tracer.trace(__method__)
    # unit_test_no_generate: action_link, a.className(create_ats_regex_string("ats-action-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-action-link")), __method__, self)
  end

  # Returns "Adventure" link.
  def adventure_link
    $tracer.trace(__method__)
    # unit_test_no_generate: adventure_link, a.className(create_ats_regex_string("ats-adventure-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-adventure-link")), __method__, self)
  end

  # Returns "Casual" link.
  def casual_link
    $tracer.trace(__method__)
    # unit_test_no_generate: casual_link, a.className(create_ats_regex_string("ats-casual-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-casual-link")), __method__, self)
  end

  # Returns "Indie Publishers" link.
  def indie_publishers_link
    $tracer.trace(__method__)
    # unit_test_no_generate: indie_publishers_link, a.className(create_ats_regex_string("ats-indie-publishers-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-indie-publishers-link")), __method__, self)
  end

  # Returns "MMO" link.
  def mmo_link
    $tracer.trace(__method__)
    # unit_test_no_generate: mmo_link, a.className(create_ats_regex_string("ats-mmo-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-mmo-link")), __method__, self)
  end

  # Returns "Puzzle" link.
  def puzzle_link
    $tracer.trace(__method__)
    # unit_test_no_generate: puzzle_link, a.className(create_ats_regex_string("ats-puzzle-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-puzzle-link")), __method__, self)
  end

  # Returns "RPGs" link.
  def rpgs_link
    $tracer.trace(__method__)
    # unit_test_no_generate: rpgs_link, a.className(create_ats_regex_string("ats-rpgs-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-rpgs-link")), __method__, self)
  end

  # Returns "Shooters" link.
  def shooters_link
    $tracer.trace(__method__)
    # unit_test_no_generate: shooters_link, a.className(create_ats_regex_string("ats-shooters-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-shooters-link")), __method__, self)
  end

  # Returns "Simulation" link.
  def simulation_link
    $tracer.trace(__method__)
    # unit_test_no_generate: simulation_link, a.className(create_ats_regex_string("ats-simulation-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-simulation-link")), __method__, self)
  end

  # Returns "Sports" link.
  def sports_link
    $tracer.trace(__method__)
    # unit_test_no_generate: sports_link, a.className(create_ats_regex_string("ats-sports-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-sports-link")), __method__, self)
  end

  # Returns "Staff Picks" link.
  def staff_picks_link
    $tracer.trace(__method__)
    # unit_test_no_generate: staff_picks_link, a.className(create_ats_regex_string("ats-staff-picks-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-staff-picks-link")), __method__, self)
  end

  # Returns "Strategy" link.
  def strategy_link
    $tracer.trace(__method__)
    # unit_test_no_generate: strategy_link, a.className(create_ats_regex_string("ats-strategy-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-strategy-link")), __method__, self)
  end

  # Returns "Top Sellers" link.
  def top_sellers_link
    $tracer.trace(__method__)
    # unit_test_no_generate: top_sellers_link, a.className(create_ats_regex_string("ats-top-sellers-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-top-sellers-link")), __method__, self)
  end

  # Returns "New Releases" link.
  def new_releases_link
    $tracer.trace(__method__)
    # unit_test_no_generate: new_releases_link, a.className(create_ats_regex_string("ats-new-releases-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-new-releases-link")), __method__, self)
  end

  # Returns "On Sale" link.
  def on_sale_link
    $tracer.trace(__method__)
    # unit_test_no_generate: on_sale_link, a.className(create_ats_regex_string("ats-on-sale-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-on-sale-link")), __method__, self)
  end

  # Returns "Coming Soon" link.
  def coming_soon_link
    $tracer.trace(__method__)
    # unit_test_no_generate: coming_soon_link, a.className(create_ats_regex_string("ats-coming-soon-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-coming-soon-link")), __method__, self)
  end

  # Returns "Support" link.
  def support_link
    $tracer.trace(__method__)
    # unit_test_no_generate: support_link, a.className(create_ats_regex_string("ats-support-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-support-link")), __method__, self)
  end

  # Returns "GameStop Events" link.
  def gamestop_events_link
    $tracer.trace(__method__)
    # unit_test_no_generate: gamestop_events_link, a.className(create_ats_regex_string("ats-gamestop-events-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-gamestop-events-link")), __method__, self)
  end

  # Returns "Blogs" link.
  def blogs_link
    $tracer.trace(__method__)
    # unit_test_no_generate: blogs_link, a.className(create_ats_regex_string("ats-blogs-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-blogs-link")), __method__, self)
  end

  # Returns "Forums" link.
  def forums_link
    $tracer.trace(__method__)
    # unit_test_no_generate: forums_link, a.className(create_ats_regex_string("ats-forums-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-forums-link")), __method__, self)
  end

	# Returns impulse "Copyright" label.
	def impulse_copyright_link
		$tracer.trace(__method__)
		# unit_test_no_generate: impulse_copyright_link, a.className(create_ats_regex_string("ats-copyright-link"))
		return ToolTag.new(a.className(create_ats_regex_string("ats-copyright-link")), __method__, self)
	end

  # Returns "License" link.
  def license_link
    $tracer.trace(__method__)
    # unit_test_no_generate: license_link, a.className(create_ats_regex_string("ats-license-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-license-link")), __method__, self)
  end

  # Returns "Sales FAQ" link.
  def sales_faq_link
    $tracer.trace(__method__)
    # unit_test_no_generate: sales_faq_link, a.className(create_ats_regex_string("ats-sales-faq-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-sales-faq-link")), __method__, self)
  end

  # Returns "Privacy Policy" link.
  def privacy_policy_link
    $tracer.trace(__method__)
    # unit_test_no_generate: privacy_policy_link, a.className(create_ats_regex_string("ats-privacy-policy-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-privacy-policy-link")), __method__, self)
  end

  # Returns "Return Policy" link.
  def return_policy_link
    $tracer.trace(__method__)
    # unit_test_no_generate: return_policy_link, a.className(create_ats_regex_string("ats-return-policy-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-return-policy-link")), __method__, self)
  end

  # Returns "Terms of Service" link.
  def terms_of_service_link
    $tracer.trace(__method__)
    # unit_test_no_generate: terms_of_service_link, a.className(create_ats_regex_string("ats-terms-of-service-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-terms-of-service-link")), __method__, self)
  end

	# Returns impulse "Connect:" label.
	def connect_label
		$tracer.trace(__method__)
		# unit_test_no_generate: connect_label, li.className(create_ats_regex_string("ats-footer-connect"))
		return ToolTag.new(li.className(create_ats_regex_string("ats-footer-connect")), __method__, self)
	end

  # Returns "Twitter" link.
  def twitter_link
    $tracer.trace(__method__)
    # unit_test_no_generate: twitter_link, a.className(create_ats_regex_string("ats-twitter-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-twitter-link")), __method__, self)
  end

  # Returns "Facebook" link.
  def facebook_link
    $tracer.trace(__method__)
    # unit_test_no_generate: facebook_link, a.className(create_ats_regex_string("ats-facebook-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-facebook-link")), __method__, self)
  end

  # Returns impulse announcement "RSS" link.
  def announcements_rss_link
    $tracer.trace(__method__)
    # unit_test_no_generate: announcements_rss_link, a.className(create_ats_regex_string("ats-rss-link"))
    return ToolTag.new(a.className(create_ats_regex_string("ats-rss-link")), __method__, self)
  end

end
