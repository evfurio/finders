# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#unit_test_no_generate: product_title_label, div.className("/cartridgeProductHeader/").find.h1.className("grid_17")
#unit_test_no_generate: buy_preowned_panel, div.className("/buybox/").find.h2("BUY PRE-OWNED").parent("div");GameStopDetailsBuyPanel;self
#unit_test_no_generate: buy_new_panel,  div.className("/buybox/").find.h2("BUY NEW").parent("div");GameStopDetailsBuyPanel;self
#unit_test_no_generate: buy_first_panel, div.className("/buybox/").find.div.className("buy1");GameStopDetailsBuyPanel;self
#unit_test_no_generate: we_also_recommend_label, div.with.className("/carouselbox/").find.h2
#unit_test_no_generate: product_recommendation_list_endeca, find.div.className("item");GameStopProductDetailRecommendationList;self
#unit_test_no_generate: product_recommendation_list_certona, find.div.className("widget_style").find.li;GameStopProductDetailRecommendationList;self
#unit_test_no_generate: product_recommendation_list_previous_arrow, a.with.className("previous")
#unit_test_no_generate: product_recommendation_list_next_arrow, a.with.className("next")

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to product details.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopProductDetailFinder
  # Returns the product title label from the product details page.
  #### #Product details Title and Title Label hasn't functioned since we put this into page builder.  Updated the product_title_label finder to work with the current implementation.
  def product_title_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("cartridgeProductHeader").find.h1.className("grid_17"), __method__)
  end

  # Returns the product name (String) with the "by Manufacturer" stripped
  def product_title
    $tracer.trace(__method__)
    tag = product_title_label
    cite = tag.child("cite")
    return tag.inner_text.gsub(cite.innerText, "").strip
  end

  # Returns the "buy prewoned" details panel.
  def buy_preowned_panel
    $tracer.trace(__method__)
    return GameStopDetailsBuyPanel.new(ToolTag.new(div.className("buybox").find.h2("PRE-OWNED$").parent("div"), __method__), self)
  end

  # Returns the "buy new" details panel.
  def buy_new_panel
    $tracer.trace(__method__)
    return GameStopDetailsBuyPanel.new(ToolTag.new( div.className("buybox").find.h2("/NEW$/").parent("div"), __method__), self)
  end

  # Returns the "first" of "buy preowned" or "buy new" details panel, based
  # on which ever is displayed first on the page.
  def buy_first_panel
    $tracer.trace(__method__)
    return GameStopDetailsBuyPanel.new(ToolTag.new(div.className("buybox").find.div.className("buy1"), __method__), self)
  end

  def buy_second_panel
    $tracer.trace(__method__)
    return GameStopDetailsBuyPanel.new(ToolTag.new(div.className("buybox").find.div.className("buy2"), __method__), self)
  end

  # Return the "... We Also Recommend" label.
  def we_also_recommend_label
    $tracer.trace(__method__)
    return ToolTag.new(div.with.className("carouselbox").find.h2, __method__)
  end

  # Return the endeca product detail recommendation list.
  def product_recommendation_list_endeca
    $tracer.trace(__method__)
    return GameStopProductDetailRecommendationList.new(ToolTag.new(find.div.className("items"), __method__), self)
  end

  # Return the certona product detail recommendation list.
  def product_recommendation_list_certona
    $tracer.trace(__method__)
    return GameStopProductDetailRecommendationList.new(ToolTag.new(div.className("widget_style").find.li, __method__), self)
  end

  # Returns the product detail recommendation list previous arrow
  def product_recommendation_list_previous_arrow
    $tracer.trace(__method__)
    return ToolTag.new(a.with.className("prev"), __method__)
  end

  # Returns the product detail recommendation list next arrow
  def product_recommendation_list_next_arrow
    $tracer.trace(__method__)
    return ToolTag.new(a.with.className("next"), __method__)
  end

  # Returns the checkout button in upsell modal
  def upsell_checkout_button
    $tracer.trace(__method__)
    return ToolTag.new(a.id("checkoutButton"), __method__)
  end

  # Returns the close button in upsell modal
  def upsell_close_button
    $tracer.trace(__method__)
    return ToolTag.new(img.id("btnClose"), __method__)
  end

  # Returns the upsell modal panel
  def upsell_modal_panel
    $tracer.trace(__method__)
    return ToolTag.new(div.className("modalPanel"), __method__)
  end
end