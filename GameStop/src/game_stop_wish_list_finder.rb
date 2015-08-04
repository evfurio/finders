# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#unit_test_no_generate: add_to_wish_list_link, a.id("/wishlist_trigger/")
#unit_test_no_generate: wish_list_label, img.src("/core_wish/")

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to wish lists.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopWishListFinder
    # Returns "add to wish list" link.
    def add_to_wish_list_link
        $tracer.trace(__method__)
        return ToolTag.new(a.id("/wishlist_trigger/"), __method__)
    end

    # Returns the list of item in the wish list.
    def wish_list
        $tracer.trace(__method__)
        name_links = a.id("/nameLink/")
        remove_buttons = input.id("/RemoveButton/")
        return GameStopWishList.new(ToolTag.new(name_links, __method__), ToolTag.new(remove_buttons, __method__))
    end

    # Returns the "Wish List" label.
    def wish_list_label()
        $tracer.trace(__method__)
        return ToolTag.new(img.src("/core_wish/"), __method__)
    end

end
