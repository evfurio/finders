# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# This class houses and provides finders for a list of items in the cart.
# == Usage
#  list_item = @browser.cart_list.at(0)
class ImpulseCartList < CommonComponent
    # Returns the product item at the specified index from the list. The item
    # is returned as a GameStopCartListItem; see its documentation for additional
    # usage examples.
    # _index_:: zero-based index of the item to be retrieved from the list.
    def at(index)
        return ImpulseCartListItem.new(@tag.at(index), @browser)
    end

    # Returns the number of items in the cart.
    def length()
        # If there are no items, return 0 for the length.
        return 0 unless @tag.exists

        return @tag.length
    end
end

# == Overview
# This class houses and provides finders for a cart list item.
# == Usage
#  @browser.cart_list.at(0).remove_button.click
class ImpulseCartListItem < CommonComponent
  # Returns the remove link for this item.
  def remove_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.className(create_ats_regex_string("ats-remove-product-link")), format_method(__method__), @browser)
  end

  # Returns the product title link for this item.
  def product_name_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.className(create_ats_regex_string("ats-product-title-link")), format_method(__method__), @browser)
  end

end
