# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This class houses and provides finders for the tabbed "lists" on
# the home page (e.g. Best Sellers, Available Now, etc.).
# == Usage
#  list_item = @browser.best_sellers_list.at(0)
class ImpulseTabbedProductList < CommonComponent
  # Returns the product item at the specified index from the list. The item
  # is returned as an ImpulseTabbedProductListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    # Note that since the finder that created this instance only
    # finds the list of "imgBorders", not the list items that we really want,
    # we have to return the list item here.
    return ImpulseTabbedProductListItem.new(@tag.at(index).parent("li"), @browser)
  end

  # Returns the number of products in the list.
  def length()
    # If there are no items, return 0 for the length.
    if(!@tag.exists)
      return 0
    end

    return @tag.length
  end
end

# == Overview
# This class houses and provides finders for a tabbed list item.
# == Usage
#  @browser.best_sellers_list.at(0).product_buy_button.click
class ImpulseTabbedProductListItem < CommonComponent

  # Returns the item's title link.
  def product_title_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(
      @tag.find.h1.find.a,
      format_method(__method__), @browser)
  end

  # Returns the item's image link.
  def product_image_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("imgBorder")).find.a, format_method( __method__), @browser)
  end

  # Returns the item's price button.
  def price_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.li.className(create_ats_regex_string("price")).find.a, format_method( __method__), @browser)
  end

  # Returns the item's buy button.
  def buy_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.li.className(create_ats_regex_string("buy")).find.a, format_method( __method__), @browser)
  end

  # Returns the item's pre-purchase button.
  def pre_purchase_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.li.className(create_ats_regex_string("pp")).find.a, format_method( __method__), @browser)
  end
end
