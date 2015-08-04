# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

module GameStopMobileProductDetailFinder
    # Returns the product title label from the product details page.
    def product_title_label
        $tracer.trace(__method__)
        #unit_test_no_generate: product_title_label, div.with.className("product_description").find.h2
        return ToolTag.new(div.with.className("product_description").find.h2, __method__, self)
    end

    # Returns the product detail price list.
    def product_price_list
        $tracer.trace(__method__)
        #unit_test_no_generate: product_price_list, section.with.className("product_buy").find.tr; GameStopMobileProductDetailPriceList
        return GameStopMobileProductDetailPriceList.new(
        ToolTag.new(section.with.className("product_buy").find.tr, __method__, self), self)
    end

    # Returns Back to Top link.
    def back_to_top_link
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("top")), __method__, self)
    end

    # Returns Browse all button.
    def browse_all_link
      $tracer.trace(__method__)
      return ToolTag.new(section.id(create_ats_regex_string("browse_all")).find.a, __method__, self)
    end

    # Returns the "State" selector.
    def sort_option_selector
      $tracer.trace(__method__)
      return GameStopMobileSelector.new(ToolTag.new(get_self.select.id("sort_options"), __method__, self), self)
    end


end

