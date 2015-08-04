# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

module GameStopMobileSearchFinder

    def search_field
        $tracer.trace(__method__)
        #unit_test_no_generate: search_field, input.id("mobile_search"); GameStopMobileSearch
        return GameStopMobileSearch.new(
        ToolTag.new(input.id("mobile_search"), __method__, self), self)
    end

    # Returns the list of products (GameStopMobileProductList).
    def product_list
        $tracer.trace(__method__)
        #unit_test_no_generate: product_list, get_self.div.id("resultsPlaceholder").find.tr; GameStopMobileProductList
        return GameStopMobileProductList.new(
        ToolTag.new(get_self.div.id("resultsPlaceholder").find.tr, __method__, self), self)
    end

    # Returns Best Seller link.
    def best_seller_link
      $tracer.trace(__method__)
      return ToolTag.new(a.id(create_ats_regex_string("menu_BestSellers")), __method__, self)
    end

    # Returns Coming Soon link.
    def coming_soon_link
      $tracer.trace(__method__)
      return ToolTag.new(a.id(create_ats_regex_string("menu_ComingSoon")), __method__, self)
    end

    # ReturnsNow Shipping link.
    def now_shipping_link
      $tracer.trace(__method__)
      return ToolTag.new(a.id(create_ats_regex_string("menu_NowShipping")), __method__, self)
    end

    # Returns Load More button.
    def load_more_button
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("alternate_button")), __method__, self)
    end

end

