# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2012 GameStop, Inc.
# Not for external distribution.

# == Overview
# This class houses and provides finders for a list of discount links.
# == Usage
#  list_item = @browser.cart_total_panel.discount_links_list.at(0)
class ImpulseDiscountLinksList < CommonComponent
    # Returns the link at the specified index from the list.
    # _index_:: zero-based index of the item to be retrieved from the list.
    def at(index)
        return ToolTag.new(@tag.at(index), format_method(__method__), @browser)
    end

    # Returns the number of items in the list.
    def length()
        # If there are no items, return 0 for the length.
        return 0 unless @tag.exists

        return @tag.length
    end
end
