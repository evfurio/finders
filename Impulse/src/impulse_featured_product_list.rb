# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This class houses and provides finders for the featured games "list" on
# the home page.
# == Usage
#  list_item = @browser.featured_games_list.at(0)
class ImpulseFeaturedProductList < CommonComponent
  # Returns the product item at the specified index from the list. The item
  # is returned as an ImpulseFeaturedProductListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    return ImpulseFeaturedProductListItem.new(@tag.at(index), @browser)
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
# This class houses and provides finders for a "Featured Games" list item.
# == Usage
#  @browser.featured_games_list.at(0).product_buy_button.click
class ImpulseFeaturedProductListItem < CommonComponent

  # Returns the item's image link.
  def product_image_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className("/(\s+|^)imgBorder(\s+|$)/").find.a, format_method( __method__), @browser)
  end

  # Returns the item's price button.
  def price_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.li.className("/(\s+|^)price(\s+|$)/").find.a, format_method( __method__), @browser)
  end

  # Returns the item's buy button.
  def buy_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.li.className("/(\s+|^)buy(\s+|$)/").find.a, format_method( __method__), @browser)
  end

  # Returns the "Pre-Purchase" button.
  def pre_purchase_button
      $tracer.trace(format_method(__method__))
      return ToolTag.new(@tag.find.li.className(create_ats_regex_string("pp")).find.a, format_method(__method__), @browser)
  end
end
