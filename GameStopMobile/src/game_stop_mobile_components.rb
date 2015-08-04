# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

require "bigdecimal"

# = Overview
# This class houses and provides finders for a list of items in the cart.
# = Usage
#  list_item = @browser.cart_list.at(0)
class GameStopMobileCartList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a GameStopMobileCartListItem; see it's documentation for additional
  # usage examples.
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    # User supplied indices start at 0 and increment by 1.
    return GameStopMobileCartListItem.new(@tag.at(index), @spec)
  end

  # Returns the number of items in the cart.
  def length
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    return @tag.length
  end
end

# = Overview
# This class houses and provides finders for a cart list item.
# = Usage
#  @browser.cart_list.at(0).remove_button.click
class GameStopMobileCartListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the link to the product name.
  def name_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.td.with.className("cart_item").find.a, format_method(__method__))
  end

  # removes a product from the cart.
  def remove_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.td.with.className("cart_delete").find.a, format_method(__method__))
  end

end

# == Overview
# This class houses and provides finders for a product list. This list is
# typically generated as the result of a search.
# == Usage
#  product_list = @browser.product_list
class GameStopMobileProductList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a GameStopMobileProductListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    return GameStopMobileProductListItem.new(@tag.at(index), @spec)
  end

  # Returns the number of products in the list.
  def length
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    return @tag.length
  end
end

# == Overview
# This class houses and provides finders for a product list item.
# == Usage
#  product_item = @browser.product_list.at(0)
class GameStopMobileProductListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end


  # Returns the link to the product image.
  def product_image_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.th.with.className("results_images").find.a, format_method(__method__))
  end

  # Returns the link to the product name.
  def name_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h2.with.className("results_title").find.a, format_method(__method__))
  end
end

# == Overview
# This class houses and provides finders for a product detail price list. This list is
# typically generated as the result of a search and selecting a product with several
# types of products, ie. "BUY NEW", "BUY DOWNLOAD".
# == Usage
#  product_price_list = @browser.product_price_list
class GameStopMobileProductDetailPriceList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a GameStopMobilePriceListItem; see it's documentation for additional
  # usage examples.
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    # User supplied indices start at 0 and increment by 1.
    return GameStopMobileProductDetailPriceListItem.new(@tag.at(index), @spec)
  end

  # Returns the number of items in the cart.
  def length
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    return @tag.length
  end
end

# == Overview
# This class houses and provides finders for a product detail price list item.
# == Usage
#  product_price_item = @browser.product_price_list.at(0)
#  product_price_item.add_to_cart_button.click
class GameStopMobileProductDetailPriceListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the purchase type label.
  def purchase_type_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h3, format_method(__method__))
  end

  # Returns the add to cart price button.
  def add_to_cart_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.with.className("select-price").find.button, format_method(__method__))
  end
end

# == Overview
# This class houses and provides finders for the radio "Shipping & Handling Method" item.
# == Usage
# @browser.handling_method_buttons.value = "USA Ground"
class GameStopMobileHandlingMethodRadioButtons < CommonComponent
  # Sets the specified abbreviation's value to checked. A _Tool_Exception_
  # will be raised if the specified value is not the abbreviation
  # for one of the valid button values.
  # === Parameters:
  # _v_:: value to set the selector to.
  def value=(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    # determine currently selected item.
    old_selection = self.value

    begin
      handling_checkbox(v).should_exist
    rescue Exception => e
      raise ToolException.new(e, %Q["#{v}" is not a valid option for #{@tag.tag_name}])
    end

    # first set checked on new selection.
    handling_checkbox(v).checked = true

    # second set class name to "selected_row" on new selection.
    handling_select_row(v).call("setAttribute('class', 'selected_row')")

    # next, set old selection class name to "".
    handling_select_row(old_selection).call("setAttribute('class', '')") if old_selection

    # lastly, set shipping method id value for form.
    handling_id_hidden_label.value = handling_checkbox(v).value

  end

  # retrieves currently selected checkbox. If none are selected, nil is returned.
  def value
    $tracer.trace("\tAction: #{format_method(__method__)}")
    cells = @tag.find.tr
    for i in 0..(cells.length - 1)
      cell = cells.at(i).td
      return cell.innerText.strip if cell.parent("tr").get("className") == "selected_row"
    end

    return nil
  end

  private
  # Returns checkbox input.
  # === Parameters:
  # _v_:: value to set the selector to.
  def handling_checkbox(v)
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.strong(v.strip).parent("tr").find.input, format_method(__method__))
  end

  # Returns parent tr for setting selected row.
  # === Parameters:
  # _v_:: value to set the selector to.
  def handling_select_row(v)
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.strong(v.strip).parent("tr"), format_method(__method__))
  end

  # Returns hidden label, used for form submit.
  def handling_id_hidden_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.parent("div").find.input.id("/ShippingMethodId/"), format_method(__method__))
  end

end

# == Overview
# Parent class for other selectors. Holds common methods.
# == Usage
#  @browser.state_province_selector.value = "Louisiana"
#  @browser.state_province_selector.value.should == "Louisiana"
#  @browser.country_selector.value = "Norway"
#  @browser.country_selector.value.should == "Norway"
class GameStopMobileSelector < CommonComponent
  # Sets the select tag's option specified value. An _ArgumentError_ will be
  # raised if the specified value is not the text for one of the valid option
  # tags.
  # === Parameters:
  # _v_:: value to set the selector to.
  def value=(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    @tag.option(v).selected = true
  end

  # Returns the value currently set as selected for the select tag.
  def value
    $tracer.trace("\tAction: #{format_method(__method__)}")
    @tag.option.selected(true).innerText.strip
  end
end

# == Overview
#  Class for search label.
# == Usage
#  @browser.search_field.value = "lego"
#  @browser.search_field.click
class GameStopMobileSearch < CommonComponent
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Sets the search tag's to specified value
  # === Parameters:
  # _v_:: value to search.
  def value=(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    @tag.value = v
  end

  # simulates a click, since no button is present
  def click
    @tag.parent("section").form.call("submit()")
  end

end


# = Overview
# This class houses and provides finders for a list of stores.
# = Usage
#  list_item = @browser.mgs_hops_store_list.at(0)
class GameStopMobileStoreList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a GameStopMobileStoreListItem; see it's documentation for additional
  # usage examples.
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    # User supplied indices start at 0 and increment by 1.
    return GameStopMobileStoreListItem.new(@tag.at(index), @spec)
  end

  # Returns the number of items in the cart.
  def length
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    return @tag.length
  end
end


# = Overview
# This class houses and provides finders for a cart list item.
# = Usage
#  @browser.cart_list.at(0).remove_button.click
class GameStopMobileStoreListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the Hold Pre Owned button.
  def hold_pre_owned_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className("/hold_pre_owned/"), format_method(__method__))
  end

	# Returns the Hold New button.
  def hold_new_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className("/hold_new/"), format_method(__method__))
  end

  # Store Locator List
  # Returns the store hours.
  def store_locator_number
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h4, format_method(__method__))
  end

  # Returns the store address.
  def store_locator_address
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.p.className("address").find.a, format_method(__method__))
  end

  # Returns the store phone.
  def store_locator_phone
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.p.className("phone"), format_method(__method__))
  end

  # Returns the store hours.
  def store_locator_hours
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.p.className("hours"), format_method(__method__))
  end

  # new store locator start
  # returns the store name link on the store locator
  def store_name_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-storetitle")).a, format_method(__method__))
  end

  def store_distance
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-storedistance")), format_method(__method__))
  end

  # new store locator end

end

# = Overview
# This class houses and provides finders for a list of items in the cart.
# = Usage
#  list_item = @browser.cart_list.at(0)
class GameStopMobileOrderHistoryList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a GameStopMobileCartListItem; see it's documentation for additional
  # usage examples.
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    # User supplied indices start at 0 and increment by 1.
    return GameStopMobileOrderHistoryListItem.new(@tag.at(index), @spec)
  end

  # Returns the number of items in the cart.
  def length
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    return @tag.length
  end
end

# = Overview
# This class houses and provides finders for a cart list item.
# = Usage
#  @browser.cart_list.at(0).remove_button.click
class GameStopMobileOrderHistoryListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the link to the order id.
  def order_id_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.tr.className("order_status_open").find.a, format_method(__method__))
  end

  # Returns the link to the order status.
  def order_status_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.tr.className("order_status_open"), format_method(__method__))
  end


end

# == Overview
# This class houses and provides finders for a store offer list. This list is
# typically generated as the result of a search.
# == Usage
#  list_item = @browser.store_special_offer.at(0)
class GameStopStoreOfferList < CommonComponent
  # Returns the store item at the specified index from the list. The item
  # is returned as a GameStopStoreOfferListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the store row to be retrieved from the list.
  def at(index)
    return GameStopStoreOfferListItem.new(@tag.at(index))
  end

  # Returns the number of offers in the list.
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    return @tag.length
  end
end


# == Overview
# This class houses and provides finders for a store offer list item.
# == Usage
#  @browser.store_special_offer.at(0).store_offer_link.click
class GameStopStoreOfferListItem < CommonComponent
  # returns the store name link on the store locator
  def store_offer_name
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("addPadding")).h3, format_method(__method__))
  end

  def store_offer_details
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("addPadding")).h4, format_method(__method__))
  end

  def store_offer_more_details
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("addPadding")).p, format_method(__method__))
  end

  def store_offer_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("addPadding")).a, format_method(__method__))
  end
end
