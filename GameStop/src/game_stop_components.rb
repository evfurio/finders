require "bigdecimal"

# == Overview
# Parent class for other components. This exists only to house common data
# and functionality (which is currently only the tag). For usage, see one of the
# derived classes.

# == Overview
# This class houses and provides finders for a HOPS store list. This list is
# typically generated as the result of a search.
# == Usage
#  list_item = @browser.hops_store_list.at(0)
class GameStopHopsStoreList < CommonComponent
  # Returns the store item at the specified index from the list. The item
  # is returned as a GameStopHopsStoreItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the store row to be retrieved from the list.
  def at(index)
    return GameStopHopsStoreListItem.new(@tag.at(index))
  end

  # Returns the number of products in the list.
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    return @tag.length
  end
end

# == Overview
# This class houses and provides finders for a HOPS store list item.
# == Usage
#  @browser.hops_store_list.at(0).pickup_at_store_button.click
class GameStopHopsStoreListItem < CommonComponent
  # returns the pickup at store button
  def pickup_at_store_button
    $tracer.trace(format_method(__method__))
    #return ToolTag.new(@tag.jquery("a[id$='LowStockPickUpLink'], a[id$='PickUpTextLink']"), format_method(__method__), self)
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-hops-pickup-lnk")), format_method(__method__))
  end
	
	# returns the store name link on the store locator
  def store_name_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-storetitle")).a, format_method(__method__))
  end

  def store_details_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.className(create_ats_regex_string("ats-storedetails-link")), format_method(__method__))
  end

  # returns the store miles
  def store_miles_distance
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-storedistance")), format_method(__method__))
  end

  # returns the store icon on the store locator
  def store_locator_icon
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-storetitle")).img, format_method(__method__))
  end

  # returns the test for stores number of miles away on the store locator
  # def miles_away
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.th.class("/miles_away/"), format_method(__method__), self )
  # end

  # returns the store distance label on the store locator
  # def store_distance_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.th.class("/miles_away/").span.id("/StoreDistanceLabel/"), format_method(__method__), self )
  # end

  # returns miles away label on store locator
  # def miles_away_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.th.class("/miles_away/").span.id("/MilesAwayLabel/"), format_method(__method__), self )
  # end

  # returns image URL for the store locator pin on the store locator
  # def store_pin_image
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.img.id("/StoreIndexImage").get("src"), format_method(__method__), self)
  # end

  # returns the mall name of the store on the store locator
  # def mall_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.dl.className("/address/").span.id("/MallLabel/").innerText, format_method(__method__), self)
  # end

  # returns the first address label on the store locator
  # def address1_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.dl.className("/address/").span.id("/Address1Label/").innerText, format_method(__method__), self )
  # end

  # returns the second address label on the store locator
  # def address2_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.dl.className("/address/").span.id("/Address2Label/").innerText, format_method(__method__), self )
  # end

  # returns the city label on the store locator
  # def city_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.dl.className("/address/").span.id("/CityLabel/").innerText, format_method(__method__), self )
  # end

  # returns the state label on the store locator
  # def state_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.dl.className("/address/").span.id("/StateLabel/").innerText, format_method(__method__), self )
  # end

  # returns the zip label on the store locator
  # def zip_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.dl.className("/address/").span.id("/ZipLabel/").innerText, format_method(__method__), self )
  # end

  # returns the phone label on the store locator
  # def phone_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.dl.className("/address/").span.id("/PhoneLabel/").innerText, format_method(__method__), self )
  # end

  # returns the store hours on the store locator
  # def store_hours
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.td.className("/store_hours/").span.id("/OpenHoursLabel/").innerText, format_method(__method__), self )
  # end

  # returns the select store text labels for everything in the table; needs to be parsed when returned
  # def store_select
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.td.className("/store_select/").innerText, format_method(__method__), self )
  # end

  # returns the low stock alert div; needs to be parsed when returned
  # def low_stock_alert
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.td.className("/store_select/").div.className("/lowstockalert/").innerText, format_method(__method__), self )
  # end

  # returns the what is this label
  # def what_is_this_label
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.div.id("/whatisthis/").a.id("/whatIsThisLink/").innerText, format_method(__method__), self )
  # end

  # returns the what is this link
  # def what_is_this_link
  #   $tracer.trace(format_method(__method__))
  #   return ToolTag.new(@tag.div.id("/whatisthis/").a.id("/whatIsThisLink/").get("href"), format_method(__method__), self )
  # end

end

# == Overview
# This class houses and provides finders for a product list. This list is
# typically generated as the result of a search.
# == Usage
#  list_item = @browser.product_list.at(0)
class GameStopProductList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a GameStopProductListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    return GameStopProductListItem.new(@tag.at(index), @spec)
  end

  # Returns the number of products in the list.
  def length()
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
#  @browser.product_list.at(0).add_to_cart_button.click
class GameStopProductListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the link to the product image.
  def image_link()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/res_hypSmallBox/"), format_method(__method__))
  end

  # Returns the link to the product name.
  def name_link()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/res_hypTitle/"), format_method(__method__))
  end

  # Returns the "Wish List" link.
  def wish_list_link()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/btnAddToWishlist/"), format_method(__method__), @spec)
  end

  # Returns the "Store Pickup" link.
  def store_pickup_link()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/btnPickupInStore/"), format_method(__method__), @spec)
  end

  # Returns the "Check Store Availability" link.
  def check_availability_link()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/btnCheckStoreAvailability/"), format_method(__method__))
  end

  # Returns the "Add To Cart" button.
  def add_to_cart_button()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/btnAddToCart/"), format_method(__method__))
  end

=begin
    # NOTE: per David's request, this is commented out, as it could not be found currently being
    #       used, plus it's incorrectly written.
    #
    # Returns the price
    def price
        $tracer.trace(format_method(__method__))
        p_tag = @tag.find.p.with.className("pricing")
        text = p_tag.innerText
        old_price_tag = p_tag.timeout(100).find("em")
        if (old_price_tag.exists?)
            text.sub!(old_price_tag.innerText, "")
        end
        return text.strip

        return ToolTag.new(@tag.find.p.with.className("pricecol"), format_method(__method__))
        #return ToolTag.new(@tag.find.p.with.className("pricing"), format_method(__method__))
    end
=end

end

# == Overview
# This class houses and provides finders for a list of items in the cart.
# == Usage
#  list_item = @browser.cart_list.at(0)
class GameStopCartList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a GameStopCartListItem; see it's documentation for additional
  # usage examples.
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    # User supplied indices start at 0 and increment by 1.
    # The same tag used for the data is used for the header row so we need to
    # shift by 1 to ignore that row.
    return GameStopCartListItem.new(@tag.at(index), @spec)
  end

  # Returns the number of items in the cart.
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    # The number of items one less than the number of tags in the list.
    return @tag.length - 1
  end
end

# == Overview
# This class houses and provides finders for a cart list item.
# == Usage
#  @browser.cart_list.at(0).remove_button.click
class GameStopCartListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the link to the product name.
  def name_link()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.a.className(create_ats_regex_string('ats-name')), format_method(__method__))

  end

  # Returns the quantity text box
  def quantity_field()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.input.className(create_ats_regex_string('ats-qty')), format_method(__method__))
  end

  # Returns the quantity label which, instead of the quantity text box, is present
  # for digital downloads
  def quantity_label()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.td.className(create_ats_regex_string('ats-digqty')), format_method(__method__))
  end

  # Returns the link to update the quantity.
  def update_link()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-qtyupdate")), format_method(__method__))
  end

  # Returns the "Store Pickup" link.
  def remove_button()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.a.className(create_ats_regex_string('ats-remove')), format_method(__method__))
  end

  # Returns the price.
  def price()
    $tracer.trace(format_method(__method__))
    # td_list = @tag.find("td")
    # price_td = td_list[td_list.length - 2]
    # return price_td.innerText.strip
    return ToolTag.new(@tag.td.className(create_ats_regex_string('pricecol')), format_method(__method__))
  end

  # Returns the availability label
  def availability_label()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.td.className(create_ats_regex_string('ats-avail_label')), format_method(__method__))
  end

  # Returns the availability link
  def availability_link()
    $tracer.trace(format_method(__method__))

    tag = ToolTag.new(@tag.a.className(create_ats_regex_string('ats-avail_link')), format_method(__method__))
    if !tag.exists
      tag = ToolTag.new(@tag.span.className(create_ats_regex_string('ats-avail_link')), format_method(__method__))
    end

    return tag

  end

  # Returns the invalid quantity message
  def invalid_quantity_message_label()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.span.className(create_ats_regex_string("ats-badqty")), format_method(__method__))
  end

  # Returns the Shipping Options buttons
  def shipping_option_buttons
    $tracer.trace(format_method(__method__))
    #return GameStopShippingRadioButtons.new(@tag.td.className(create_ats_regex_string('ats-shipopts')))
    return GameStopRadioButtons.new(@tag.input.id("SelectedShippingOption"))
  end
end

# == Overview
# Parent class for other selectors. Holds common methods.
# == Usage
#  @browser.state_province_selector.value = "Louisiana"
#  @browser.state_province_selector.value.should == "Louisiana"
#  @browser.country_selector.value = "Norway"
#  @browser.country_selector.value.should == "Norway"

class GameStopSelector < CommonComponent
  # Sets the select tag's option specified value. An _ArgumentError_ will be
  # raised if the specified value is not the text for one of the valid option
  # tags.
  # _v_:: value to set the selector to.
  def value=(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    @tag.option(v).selected = true
  end

  # Returns the value currently set as selected for the select tag.
  def value()
    $tracer.trace("\tAction: #{format_method(__method__)}")
    @tag.option.selected(true).innerText.strip
  end
end

# == Overview
# Class for the product link and their flyout menus.
# == Usage
#  @browser.xbox_360_link.all_link.click

class GameStopProductLinkItem < CommonComponent
  # Create a new instance. The _tag_ argument is propagated to the parent;
  # the _menu_tag_ is used by this class to handle individual flyout menu
  # clicks.
  def initialize(tag, menu_tag)
    super(tag)
    @menu_tag = menu_tag
  end

  # Returns the flyout menu button for "See All...".
  def all_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@menu_tag.find.div.className("mm-content-base").find.a.className("mainButton"), format_method(__method__))
  end
end

# == Overview
# Class for the search field overlay.
# == Usage
#  @browser.search_field_overlay.bestsellers(0).click

class GameStopSearchOverlay < CommonComponent
  # Returns the bestsellers link at position indicated by idx.
  # === Parameters:
  # _idx_:: index into the list of links under the bestsellers heading.
  def bestsellers_link(idx)
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.ul.className("bestsellers").find.li.at(idx).find.a, format_method(__method__))
  end
end

# == Overview
# Class for the wish list.
# == Usage
#  @browser.wish_list.at(0).name_link.click
class GameStopWishList < CommonComponent
  # Creates the instance.
  # === Parameters:
  # _name_links_:: the list of name link tags for this list.
  # _remove_button_:: the list of remove button tags for this list.
  def initialize(name_links, remove_buttons)
    @name_links = name_links
    @remove_buttons = remove_buttons
  end

  # Overrides and returns should_exist on both name_links and remove_buttons
  def should_exist
    $tracer.trace(format_method(__method__))
    @name_links.should_exist && @remove_buttons.should_exist
  end

  # Overrides and returns should_not_exist on both name_links and remove_buttons
  def should_not_exist
    $tracer.trace(format_method(__method__))
    @name_links.should_not_exist && @remove_buttons.should_not_exist
  end

  # Overrides base class method.  Sends the specified method to the contained tag.
  # === Parameters:
  # _methodname_:: method being called.
  # _args_:: array of arguments passed to the method.
  # _block_:: block.
  def method_missing(methodname, *args, &block)
    # TODO: this implementation is a bit screwy. Since we don't have
    # the ability grab much via tag properties, we just check any missing
    # method calls to @name_links.
    # Hopefully we can make the implentation make more sense if some
    # unique ids or names are added as properties to, say, the enclosing
    # tables or trs.
    return @name_links.send(methodname, *args, &block)
  end

  # Overrides base class method.  Returns true of the component exists; returns false otherwise.
  def exists
    $tracer.trace(format_method(__method__))
    @name_links.exists && @remove_buttons.exists
  end

  # Returns the number of items in the wish list.
  def length
    if (!@name_links.exists)
      return 0
    end

    # @name_links.length will equal @remove_buttons.length so it doesn't matter
    # which length we return.
    return @name_links.length
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a GameStopWishListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _idx_:: zero-based index of the product to be retrieved from the list.
  def at(idx)
    return GameStopWishListItem.new(@name_links.at(idx), @remove_buttons.at(idx))
  end
end

# == Overview
# Class for a wish list item.
class GameStopWishListItem < CommonComponent
  # Creates the instance.
  # === Parameters:
  # _name_link_:: the name link tag for this item.
  # _remove_button_:: the remove button tag for this item.
  def initialize(name_link, remove_button)
    @name_link = name_link
    @remove_button = remove_button
  end

  # Overrides and returns should_exist on both name_link and remove_button
  def should_exist
    $tracer.trace(format_method(__method__))
    @name_link.should_exist && @remove_button.should_exist
  end

  # Overrides and returns should_not_exist on both name_link and remove_button
  def should_not_exist
    $tracer.trace(format_method(__method__))
    @name_link.should_not_exist && @remove_button.should_not_exist
  end

  # Returns the name link.
  def name_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@name_link, format_method(__method__))
  end

  # Returns the remove button.
  def remove_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@remove_button, format_method(__method__))
  end

  def method_missing(methodname, *args, &block)
    # TODO: this implementation is a bit screwy. Since we don't have
    # the ability grab much via tag properties, we just check any missing
    # method calls to @name_link.
    # Hopefully we can make the implentation make more sense if some
    # unique ids or names are added as properties to, say, the enclosing
    # tables or trs.
    return @name_link.send(methodname, *args, &block)
  end
end

# == Overview
# Class for the order list.
# == Usage
#  @browser.wish_list.at(0).name_link.click
class GameStopOrderList < CommonComponent
  # Returns the order item at the specified index from the list. The item
  # is returned as a GameStopOrderListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    return GameStopOrderListItem.new(@tag.at(index))
  end
end

# == Overview
# Class for an order list item.
class GameStopOrderListItem < CommonComponent
  # Returns the order number link.
  def order_number_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag, format_method(__method__))
  end

  # Returns the label containing the ordered products' titles/names AND
  # the order number.
  def ordered_products_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.parent("td"), format_method(__method__))
  end

end

class GameStopRadioButtons < CommonComponent

  # Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    return @tag.exists ? @tag.length : 0
  end

  # Returns the available value labels
  def available_values
    result = []
    for i in (0 .. @tag.length - 1)
      result << @tag[i].value
    end
    return result
  end

  # Returns the label of the currently checked radio button
  def value
    $tracer.trace("\tAction: #{format_method(__method__)}")
    label = ""
    for i in (0 .. @tag.length - 1)
      if @tag[i].checked == "true"
        label =@tag[i].value
        break
      end
    end
    return label
  end

  # Sets the radio button matching the passed in label
  def value=(k)
    $tracer.trace("\tSet: #{format_method(__method__)} #{k}")

    if @tag.length == 0 || k.nil?
      raise ToolException.new(
                Exception.new,
                %Q(Shipping Option did not exist when you tried to set the value to "#{k}")
            )
    end

    for i in (0 .. @tag.length - 1)
      if k == @tag[i].value
        @tag[i].checked = true
        break
      end
    end
  end

end

#DT 1-17-2013
class GameStopHandlingMethodRadioButtons < CommonComponent
  # Sets the specified abbreviation's value to checked. A _Tool_Exception_
  # will be raised if the specified value is not the abbreviation
  # for one of the valid button values.
  # _v_:: value to set the selector to.

  #@tag.div.className("/hmethod/").find.label("/Two Day/").parent("p").input.checked = true

  def value=(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    begin
      tag = @tag.find.label("/" + v +"/").parent("p").find.input.should_exist
    rescue Exception => e
      ex = ToolException.new(e, "#{@tag.tag_name} did not exist when you tried to set the value to \"" + v + "\"")
      raise ex
    end
    tag.checked = true
  end

  # Returns the value currently set as the checked. Returns an empty string
  # if nothing is checked.
  def value()
    $tracer.trace("\tAction: #{format_method(__method__)}")
    cells = @tag.find.p
    for i in 0..(cells.length - 1)
      cell = cells.at(i)
      return cell.label.innerText.strip if cell.find.input.checked == "true"
    end

    return ""
  end

  def hops_more_info()
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a, format_method(__method__))
  end

end

# == Overview
# Class for the buy panels on a "product details" page.
# == Usage
#  @browser.buy_first_panel.add_to_cart_button.click
class GameStopDetailsBuyPanel < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the add to cart button
  def add_to_cart_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/AddToCart/"), format_method(__method__), @spec)
  end

  # Returns the add to cart button
  def check_availability_lnk
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.className(create_ats_regex_string("ats-hops-pickup-lnk")), format_method(__method__), @spec)
  end

  # Returns the price as a string
  def price
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.child("h3"), format_method(__method__)).inner_text
  end

  # Returns PUR Pro price object
  def pur_pro_price
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.id("/purProPriceDiv/"), format_method(__method__), @spec)
  end

  # Returns the product condition
  # New, Used, Digital Download
  # == Usage
  # buy_first_panel.condition.should include product_condition
  # Must use the should include unless you strip out everything except the text within the <strong> tag.
  def condition
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.child("h2"), format_method(__method__)).inner_text
  end

end

# == Overview
# This class houses and provides finders for getting totals to calculate tax on Payment Review page
# == Usage
#  @browser.order_summary_panel.subtotal_amount.innerText
#  @browser.order_summary_panel.shipping_handling_amount.innerText
#  @browser.order_summary_panel.free_shipping_amount.innerText
#  @browser.order_summary_panel.estimated_tax_amount.innerText
#  @browser.order_summary_panel.order_total_amount.innerText
#  @browser.order_summary_panel.total_before_disc_amount.innerText
#  @browser.order_summary_panel.disc_amount.innerText
##-----------------------------------------------------------------------------
class GameStopOrderSummaryPanel < CommonComponent
  def discounts_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.tr.id("/_DiscountsRow/"), format_method(__method__))
  end

  # Returns the subtotal amount
  def subtotal_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_lblSubTotalAmount$/"), format_method(__method__))
  end

  # Returns the handling amount
  def shipping_handling_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_lblShippingAndHandling$/"), format_method(__method__))
  end

  # Returns the shipping amount
  def free_shipping_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_lblFreeShipping$/"),
                       format_method(__method__))
  end

  # Returns the estimated tax amount
  def estimated_tax_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_lblTax$/"),
                       format_method(__method__))
  end

  # Returns order total amount
  def order_total_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_lblTotal$/"),
                       format_method(__method__))
  end

  # Returns order total amount before the discount
  def total_before_disc_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_lblBeforeDiscountsAmount$/"),
                       format_method(__method__))
  end

  # Returns the discount amount
  def disc_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_lblDiscountAmount$/"), format_method(__method__))
  end
end

# == Overview
# This class houses and provides finders for getting totals to calculate tax on Order Confirmation page
# == Usage
#  @browser.order_total_panel.subtotal_amount.innerText
#  @browser.order_total_panel.shipping_handling_amount.innerText
#  @browser.order_total_panel.free_shipping_amount.innerText
#  @browser.order_total_panel.estimated_tax_amount.innerText
#  @browser.order_total_panel.order_total_amount.innerText
#  @browser.order_total_panel.total_before_disc_amount.innerText
#  @browser.order_total_panel.disc_amount.innerText
##-----------------------------------------------------------------------------
class GameStopOrderTotalPanel < CommonComponent
  # Returns the discounts label.
  def discounts_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.tr.className("discount"), format_method(__method__))
  end

  # Returns the subtotal amount
  def subtotal_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_SubtotalLabel$/"), format_method(__method__))
  end

  # Returns the handling amount
  def shipping_handling_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_HandlingLabel$/"), format_method(__method__))
  end

  # Returns the shipping amount
  def free_shipping_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_FreeShippingLabel$/"),
                       format_method(__method__))
  end

  # Returns the estimated tax amount
  def estimated_tax_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_EstimatedTaxLabel$/"),
                       format_method(__method__))
  end

  # Returns order total amount
  def order_total_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_OrderTotalLabel$/"),
                       format_method(__method__))
  end

  # Returns order total amount before the discount
  def total_before_disc_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/_TotalBeforeDiscountsLabel$/"),
                       format_method(__method__))
  end

  # Returns the discount amount
  def disc_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.tr.className("/^discount$/").td.className("/^right$/"), format_method(__method__))
  end
end

# == Overview
# This class houses and provides finders for a ordered item found on the Order Confirmation page.
# == Usage
#  @browser.order_summary_panel.ordered_product_label.innerText
#  @browser.order_summary_panel.ordered_availability_label.innerText
#  @browser.order_summary_panel.ordered_quantity_label.innerText
#  @browser.order_summary_panel.ordered_price_label.innerText
#  @browser.order_summary_panel.ordered_handling_options.innerText

class GameStopOrderedItem < CommonComponent

  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    return @tag.length
  end

  def at(index)
    return GameStopOrderedItem.new(@tag.at(index), @spec)
  end

  def ordered_product_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("col1")), format_method(__method__))
  end

  # Returns the availability text for ordered product
  def ordered_availability_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("col2")), format_method(__method__))
  end

  # Returns the quantity of the ordered product
  def ordered_quantity_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("col3")), format_method(__method__))
  end

  # Returns the price of the product ordered
  def ordered_price_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("col4")), format_method(__method__))
  end

  # Returns the handling options selected
  def ordered_handling_options
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-confirmordershippingdetails")).find.span, format_method(__method__))
  end

  # Returns ordered availability link
  def ordered_availability_link()
    $tracer.trace(format_method(__method__))
    tag = ToolTag.new(@tag.a.className(create_ats_regex_string('ats-avail_link')), format_method(__method__))

    if !tag.exists
      tag = ToolTag.new(@tag.span.className(create_ats_regex_string('ats-avail_link')), format_method(__method__))
    end
    return tag
  end

end

class GameStopHandlingPagePanel < CommonComponent
  #return length of list of handling page panels
  def length()
    return @tag.exists ? @tag.length : 0
  end

  #returns the GameStopHandlingPagePanel instance at a given index
  def at(index)
    return GameStopHandlingPagePanel.new(@tag.at(index), @spec)
  end

  #returns title
  def title
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.h3, format_method(__method__))
  end

  #returns handling methods buttons
  def handling_method_buttons
    $tracer.trace(format_method(__method__))
    return GameStopHandlingMethodRadioButtons.new(ToolTag.new(@tag.find.div.className("/hmethod/"), format_method(__method__)))
  end

  #returns choose store link
  def choose_store_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.rel(".choosestore"), format_method(__method__))
  end
end

class GameStopOrderedItemPanel < CommonComponent

  # returns length of list of ordered item panels
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    return @tag.length
  end

  # returns the GameStopOrderedItemPanel instance at a given index
  def at(index)
    return GameStopOrderedItemPanel.new(@tag.at(index), @browser)
  end

  # returns get items
  def get_items
    tag = ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-confirmlineitem")), format_method(__method__))
    return GameStopOrderedItem.new(tag, @browser)
  end

  # Returns the ordered product name
  def ordered_product_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("col1")), format_method(__method__))
  end

  # Returns the availability text for ordered product
  def ordered_availability_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("col2")), format_method(__method__))
  end

  # Returns the quantity of the ordered product
  def ordered_quantity_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("col3")), format_method(__method__))
  end

  # Returns the price of the product ordered
  def ordered_price_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("col4")), format_method(__method__))
  end

  def order_item_shipping_box
    $tracer.trace(format_method(__method__))
    tag = ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-confirmshipaddressbox")), format_method(__method__))

    return ConfirmShipAddressPanel.new(tag)
  end

  def ordered_availability_link()
    $tracer.trace(format_method(__method__))

    tag = ToolTag.new(@tag.a.className(create_ats_regex_string('ats-avail_link')), format_method(__method__))

    if !tag.exists
      tag = ToolTag.new(@tag.span.className(create_ats_regex_string('ats-avail_link')), format_method(__method__))
    end
    return tag
  end

  def download_code
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-dlcmsgleft")), format_method(__method__))
  end

  def download_instructions
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-dlcmsgright")), format_method(__method__))

  end

end

# == Overview
# This class houses and provides finders for payment info found under Your Information on the order confirmation page.
# == Usage
#  @browser.confirm_payment_panel.confirm_payment_type_label.innerText
#  @browser.confirm_payment_panel.confirm_payment_number_label.innerText

class ConfirmPaymentPanel < CommonComponent
  # Returns payment type used
  def confirm_payment_type_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("PaymentTypeLabel")), format_method(__method__))
  end

  # Returns credit card number used
  def confirm_payment_number_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("CreditCardNumberLabel")), format_method(__method__))
  end

  def confirm_paypal_payment_method_label
    $tracer.trace(current_method_name)
    return ToolTag.new(span.className(create_ats_regex_string("ats-paypalpmtmethodlabel")), current_method_name)
  end

  def confirm_paypal_contact_info_msg
    $tracer.trace(current_method_name)
    return ToolTag.new(strong.className(create_ats_regex_string("ats-paypalcontactinfomsg")), current_method_name)
  end
end
# == Overview
# This class houses and provides finders for shipping info found under Your Information on the Order Confirmation page.
# == Usage
#  @browser.confirm_shipping_address_panel.confirm_shipping_first_name_label.innerText
#  @browser.confirm_shipping_address_panel.confirm_shipping_last_name_label.innerText
#  @browser.confirm_shipping_address_panel.confirm_shipping_addr1_label.innerText
#  @browser.confirm_shipping_address_panel.confirm_shipping_city_label.innerText
#  @browser.confirm_shipping_address_panel.confirm_shipping_state_label.innerText

class ConfirmShipAddressPanel < CommonComponent
  # Returns shipping first name on the order confirmation page
  def confirm_shipping_first_name_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("ShippingAddressFirstNameLabel")), format_method(__method__))
  end

  # Returns the shipping info last name on the order confirmation page
  def confirm_shipping_last_name_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("ShippingAddressLastNameLabel")), format_method(__method__))
  end

  # Returns the shipping info address line 1 on the order confirmation page
  def confirm_shipping_addr1_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("ShippingAddressLine1Label")), format_method(__method__))
  end

  # Returns the shipping info city on the order confirmation page
  def confirm_shipping_city_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("ShippingAddressCityLabel")), format_method(__method__))
  end

  # Returns the shipping info state on the order confirmation page
  def confirm_shipping_state_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("ShippingAddressStateLabel")), format_method(__method__))
  end

  # Returns the shipping info zip on the order confirmation page
  def confirm_shipping_zip_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("ShippingAddressZipLabel")), format_method(__method__))
  end

  # Returns the shipping info country on the order confirmation page
  def confirm_shipping_country_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("ShippingAddressCountryLabel")), format_method(__method__))
  end

end

# == Overview
# This class houses and provides finders for billing info found under Your Information on the Order Confirmation page.
# == Usage
#  @browser.confirm_billing_address_panel.confirm_billing_first_name_label.innerText
#  @browser.confirm_billing_address_panel.confirm_billing_last_name_label.innerText
#  @browser.confirm_billing_address_panel.confirm_billing_addr1_label.innerText
#  @browser.confirm_billing_address_panel.confirm_billing_city_label.innerText
#  @browser.confirm_billing_address_panel.confirm_billing_state_label.innerText

class ConfirmBillAddressPanel < CommonComponent
  # Returns the billing info first name on the order confirmation page
  def confirm_billing_first_name_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("BillingAddressFirstNameLabel")), format_method(__method__))
  end

  # Returns the billing info last name on the order confirmation page
  def confirm_billing_last_name_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("BillingAddressLastNameLabel")), format_method(__method__))
  end

  # Returns the billing address line 1 on the order confirmation page
  def confirm_billing_addr1_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("BillingAddressLine1Label")), format_method(__method__))
  end

  # Returns the billing city on the order confirmation page
  def confirm_billing_city_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("BillingAddressCityLabel")), format_method(__method__))
  end

  # Returns the billing state on the order confirmation page
  def confirm_billing_state_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("BillingAddressStateLabel")), format_method(__method__))
  end

  # Returns the billing zip on the order confirmation page
  def confirm_billing_zip_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("BillingAddressZipLabel")), format_method(__method__))
  end

  # Returns the billing country on the order confirmation page
  def confirm_billing_country_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id(create_ats_regex_string("BillingAddressCountryLabel")), format_method(__method__))
  end

end

# == Overview
# This class houses and provides finders for pop up modal to create an acct on the Order Confirmation page.
# == Usage
#  @browser.create_acct_modal_panel.close_modal_button.innerText
#  @browser.create_acct_modal_panel.modal_email_addr_field.innerText
#  @browser.create_acct_modal_panel.modal_password_field.innerText
#  @browser.create_acct_modal_panel.modal_confirm_email_field.innerText
#  @browser.create_acct_modal_panel.modal_confirm_password_field.innerText

class CreateAcctModal < CommonComponent
  # Returns the modal close button
  def modal_close_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.className(create_ats_regex_string("ats-closemodal")), format_method(__method__))
  end

  # Returns the modal email address field
  def modal_email_addr_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-createemailaddr")), format_method(__method__))
  end

  # Returns the modal password field
  def modal_password_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-createpwdfield")), format_method(__method__))
  end

  # Returns the modal confirm email field
  def modal_confirm_email_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-confirmemailaddrfield")), format_method(__method__))
  end

  # Returns the modal confirm password field
  def modal_confirm_password_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-confirmpwdfield")), format_method(__method__))
  end

  # Returns the modal opt in checkbox
  def modal_opt_in_checkbox
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-optinbox")), format_method(__method__))
  end

  # Returns the modal create account button
  def modal_create_account_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.className(create_ats_regex_string("btn_negative")), format_method(__method__))
  end

  # Returns the modal No Thanks! link
  def modal_no_thanks_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.className(create_ats_regex_string("closetext")), format_method(__method__))
  end

end

# == Overview
# Class for the "log in slider" on the "log in" page.
# == Usage
#  @browser.log_in_slider_panel.log_me_in_displayed.should be_true
class GameStopLoginSliderPanel < CommonComponent
  # Returns true if the log me in panel should be showing else false
  def log_me_in_displayed
    $tracer.trace(format_method(__method__))
    return @tag.call("style.marginLeft").to_i == 0 ? true : false
  end

  # Returns true if the create account panel should be showing else false
  def create_account_displayed
    $tracer.trace(format_method(__method__))
    return @tag.call("style.marginLeft").to_i < 0 ? true : false
  end
end

# == Overview
# Class for the list of addresses on the Address Book page
# == Usage
#  @browser.credit_card_list.at(0)
class CreditCardList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
    @panels = []
    if (@tag.exists)
      edit_buttons = @tag.find.input.id("/EditButton$/")
      for i in 0..(edit_buttons.length - 1)
        parent_table = edit_buttons[i].parent("table")[2]
        @panels << parent_table if parent_table.exists?
      end
    end
  end

  def at(index)
    return CreditCardPanel.new(@panels[index], @spec)
  end

  def length
    return @panels.length
  end
end

# == Overview
# Class for an credit card panel on the Credit Card Info page
# == Usage
#  @browser.credit_card_list.at(0).edit_button.click
class CreditCardPanel < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the edit button
  def edit_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/EditButton$/"), format_method(__method__))
  end

  # Returns the remove button
  def remove_button(and_confirm_cancel = nil)
    $tracer.trace(format_method(__method__))
    and_confirm_cancel == :and_confirm_cancel ? @spec.record.confirm.cancel : @spec.record.confirm.ok
    return ToolTag.new(@tag.find.input.id("/RemoveButton$/"), format_method(__method__))
  end

  # Returns the default credit radio button
  def default_credit_card_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/DefaultCreditCardRadioButton$/"), format_method(__method__))
  end
end

# == Overview
# Class for the list of addresses on the Address Book page
# == Usage
#  @browser.shipping_address_list.at(0)
class GameStopShippingAddressList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)

    @spec = spec
    @panels = []
    if (@tag.exists)
      names = @tag.find.tr.id("/trFullName$/")
      for i in 0..(names.length - 1)
        parent_table = names[i].parent("table")[2]
        @panels << parent_table if parent_table.exists
      end
    end
  end

  # Returns the address panel at index
  def at(index)
    return GameStopShippingAddressPanel.new(@panels[index], @spec)
  end

  # Returns the list length
  def length
    return @panels.length
  end
end

# == Overview
# Class for an address panel on the Address Book page
# == Usage
#  @browser.shipping_address_list.at(0).edit_button.click
class GameStopShippingAddressPanel < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the edit button
  def edit_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/EditButton$/"), format_method(__method__))
  end

  # Returns the remove button
  def remove_button(and_confirm_cancel = nil)
    $tracer.trace(format_method(__method__))
    and_confirm_cancel == :and_confirm_cancel ? @spec.record.confirm.cancel : @spec.record.confirm.ok
    return ToolTag.new(@tag.find.input.id("/RemoveButton$/"), format_method(__method__))
  end

  # Returns the default shipping radio button
  def default_shipping_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/DefaultAddressRadioButton$/"), format_method(__method__))
  end
end

# == Overview
# Class for popup Store Selection
# This popup is found on the handling options page for in-store pickup items
# == Usage
#  @browser.popup_store_panel
class GameStopPopupStorePanel < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the close link.
  def close_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/lnkClosePopup$/"), format_method(__method__))
  end

  # Returns the list of of stores.
  def store_list
    $tracer.trace(format_method(__method__))
    return GameStopStoreList.new(@tag.find.div.id("overlay_addrbox"), @spec)
  end

  # Returns the zip code field.
  def zip_code_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/txtZipCode$/"), format_method(__method__))
  end

  # Returns the search button.
  def search_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/btnSearchStores$/"), format_method(__method__), @spec)
  end
end

# == Overview
# Class for list of stores in the popup Store Selection
# == Usage
# @browser.popup_store_panel.store_list
class GameStopStoreList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the address panel at index
  def at(index)
    $tracer.trace(format_method(__method__))
    return GameStopStorePanel.new(@tag[index], @spec)
  end

  # Returns the list length
  def length
    $tracer.trace(format_method(__method__))
    return @tag.exists? ? @tag.length : 0
  end
end

# == Overview
# Class for a store in the list of stores of the popup Store Selection
# == Usage
# @browser.popup_store_panel.store_list.at(0).choose_this_store_button
class GameStopStorePanel < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the choose this store link
  def choose_this_store_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/btnChooseStore$/"), format_method(__method__), @spec)
  end
end

# == Overview
# Class for popup Shipping and Billing addresses
# This is the popup entering a new address on the billing and shipping pages
# and also for changing the address on the handling options and preview page
# == Usage
#  @browser.popup_address_panel
class GameStopPopupAddressPanel < CommonComponent
  # Returns the close link
  def close_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/lnkClosePopup$/"), format_method(__method__))
  end

  # def current_shipping_address_list
  # end

  # Returns the "First Name" field.
  def first_name_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/textFirstName$/"), format_method(__method__))
  end

  # Returns the "Last Name" field.
  def last_name_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/textLastName$/"), format_method(__method__))
  end

  # Returns the "Address 1" field.
  def address_1_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/textAddressLine1$/"), format_method(__method__))
  end

  # Returns the "Address 2" field.
  def address_2_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/textAddressLine2$/"), format_method(__method__))
  end

  # Returns the "City" field.
  def city_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/textCity$/"), format_method(__method__))
  end

  # Returns the "State/Province" selector. Usually used in conjunction with
  # the value methods of GameStopSelector.
  def state_province_selector
    $tracer.trace(format_method(__method__))
    tag = ToolTag.new(@tag.find.select.id("/ddlState$/"), format_method(__method__))
    return GameStopSelector.new(tag)
  end

  # Returns the "Zip/Postal Code" field.
  def zip_postal_code_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/textZip$/"), format_method(__method__))
  end

  # Returns the "Country" selector. Usually used in conjunction with
  # the value methods of GameStopSelector.
  def country_selector
    $tracer.trace(format_method(__method__))
    tag = ToolTag.new(@tag.find.select.id("/ddlCountry$/"), format_method(__method__))
    return GameStopSelector.new(tag)
  end

  # Returns the "Phone Number" field.
  def phone_number_field
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/textPhoneNumberDaytime$/"), format_method(__method__))
  end

  # Returns the "Ship To This Address" button.
  def ship_to_this_address_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a.id("/btnSubmitShippingAddress$/"), format_method(__method__))
  end

  # Returns the error panel.
  def error_panel
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.div.id("/ValidationSummary1$/"), format_method(__method__))
  end

  # Returns the First Name Required label.
  def first_name_required_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/valFirstName$/"), format_method(__method__))
  end

  # Returns the Last Name Required label.
  def last_name_required_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/valLastName$/"), format_method(__method__))
  end

  # Returns the Address Required label.
  def address_1_required_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/valAddress$/"), format_method(__method__))
  end

  # Returns the City Required label.
  def city_required_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/valCity$/"), format_method(__method__))
  end

  # Returns the Postal Code Required label.
  def postal_code_required_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/valZip$/"), format_method(__method__))
  end

  # Returns the Postal Code Invalid Format label.
  def postal_code_invalid_format_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/valZipRegEx$/"), format_method(__method__))
  end

  # Returns the State Required label.
  def state_required_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/valState$/"), format_method(__method__))
  end

  # Returns the Phone Required label.
  def phone_required_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/PhoneRequiredValidator$/"), format_method(__method__))
  end

  # Returns the Phone Invalid Format label.
  def phone_invalid_format_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/valPhoneFormat$/"), format_method(__method__))
  end

  # Returns the name too long label.
  def combined_name_too_long_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.id("/valNameLengthLast$/"), format_method(__method__))
  end
end

# == Overview
# Class for the Shopping Cart discounts
# == Usage
#  @browser.cart_discounts_list
class CartDiscountsList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  def initialize(tag)
    super(tag)

    @rows = []
    if @tag.exists
      for i in 0 .. (@tag.length - 1)
        parent_row = @tag[i].parent("tr")[0]
        @rows << parent_row
      end
    end
  end

  # Returns the address panel at index
  def at(index)
    $tracer.trace(format_method(__method__))

    raise ToolException.new(
              Exception.new,
              "Index out of bounds.  I only have #{@rows.length} discount(s)"
          ) if (index > @rows.length - 1) || (index < 0)

    return CartDiscountPanel.new(
        @rows[index]
    )
  end

  # Returns the list length
  def length
    $tracer.trace(format_method(__method__))
    return @rows.length
  end

  def discount_total
    sum = BigDecimal.new("0")
    for i in 0 .. (@rows.length - 1)
      sum += money_string_to_decimal(self.at(i).discount_amount)
    end
    return sum
  end
end

# == Overview
# Class for the Shopping Cart discounts
# == Usage
#  @browser.cart_discounts_list.at(0).label
class CartDiscountPanel < CommonComponent
  # Returns the label.
  def content
    $tracer.trace(format_method(__method__))
    tt = ToolTag.new(@tag.find("td")[0], format_method(__method__))
    return tt.inner_text
  end

  # Returns the discount amount.
  def discount_amount
    $tracer.trace(format_method(__method__))
    tt = ToolTag.new(@tag.find("td")[2], format_method(__method__))
    return tt.inner_text
  end
end

# == Overview
# Class for the Hops Alternate Store Popup
# == Usage
#  @browser.hops_alternate_store_popup_panel
class HopsAlternateStorePopupPanel < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the Set Alternative Store button on the Backup Plan popup.
  def set_alternate_store_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(a.id("/AltStoreLinkButton$/"), format_method(__method__), @spec)
  end

  # Returns the No Thanks button  on the Backup Plan popup.
  def no_thanks_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(a.id("/NoAltStoreLinkButton$/"), format_method(__method__), @spec)
  end

  # Returns the Cancel link on the Backup Plan popup.
  def cancel_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(a.id("/CancelLinkButton$/"), format_method(__method__), @spec)
  end
end

# == Overview
# Class for the Activate PUR popup on the Order Confirmation Page
# == Usage
#  @browser.activate_powerup_rewards_popup
class ActivatePowerupRewardsPopupPanel < CommonComponent
  # Returns the order submitted label.
  def order_submitted_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(span.id("/orderSubmittedLabel$/"), format_method(__method__))
  end

  # Returns the activate button.
  def activate_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(input.id("/redirectImageButton$/"), format_method(__method__))
  end

  # Returns the cancel link.
  def cancel_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(a.id("/btnClose$/"), format_method(__method__))
  end
end

# == Overview
# Class for the Activate PUR popup on the Order Confirmation Page
# == Usage
#  @browser.merge_accounts_popup_panel
class MergeAccountsPopupPanel < CommonComponent
  # Returns the order submitted label.
  def order_submitted_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(span.id("/lblMergeAccountsHeader$/"), format_method(__method__))
  end

  # Returns the Not Now button.
  def not_now_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(input.id("/btnNotNow$/"), format_method(__method__))
  end

  # Returns the merge accounts button.
  def merge_accounts_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(input.id("/btnMergeAccounts$/"), format_method(__method__))
  end
end

# == Overview
# This class houses and provides finders for a product detail recommendation list. This list is
# typically generated as the result of a search and selecting a product.
# == Usage
#  product_recommendation_list = @browser.product_recommendation_list
class GameStopProductDetailRecommendationList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a GameStopProductDetailRecommendationListItem
  # === Parameters:
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    # User supplied indices start at 0 and increment by 1.
    return GameStopProductDetailRecommendationListItem.new(@tag.at(index), @spec)
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
#  product_recommendation_item = @browser.product_recommendation_list.at(0)
#  title = product_recommendation_item.title_label
#  product_recommendation_item.title_link.click
class GameStopProductDetailRecommendationListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the recommendation title label.
  def title_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.with.className("title"), format_method(__method__))
  end

  # Returns the recommendation title link.
  def title_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.a, format_method(__method__))
  end
end

require "bigdecimal"

# == Overview
# This class houses and provides finders for the header aka mega menu
# == Usage
#    @browser.xbox_360_header_menu.exists
#    @browser.ps3_header_menu.exists
#	 @browser.pc_header_menu.exists
#	 @browser.wii_header_menu.exists
#	 @browser._3ds_header_menu.exists
#	 @browser.psp_header_menu.exists
#	 @browser.psvita_header_menu.exists
##-----------------------------------------------------------------------------
class GameStopMegaMenuHeaderMenu < CommonComponent

  # == Initialize tag for GameStopMegaMenuHeaderMenu
  def initialize(tag)
    super(tag)
  end

  # == Creates index for tags.
  # def at(index)
  # return ToolTag.new(@tag.at(index),format_method(__method__))
  # end

  # Returns the number of products in the list.
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    # Returns length of tag
    return @tag.length
  end
end

# == Overview
# Class for list of products in the container Selection.
class GameStopProductContainerList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  def initialize(tag)
    super(tag)
  end

  # Returns the produts panel at index
  def at(index)
    $tracer.trace(format_method(__method__))
    return GameStopProductContainerItem.new(@tag[index])
  end

  # Returns the list length
  def length
    $tracer.trace(format_method(__method__))
    return @tag.exists ? @tag.length : 0
  end
end

# == Overview
# This class houses and provides finders for a Best seller product list .
class GameStopProductContainerItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  def initialize(tag)
    super(tag)
  end

  # Returns the produdt detail page.
  def product_detail_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag, format_method(__method__))
  end

  # Return data-track attribute as an ruby array
  def data_track_list
    $tracer.trace(format_method(__method__))
    return @tag.get("data-track").split("|")
  end

end

# == Overview
# This class houses and provides finders for a list of items in the recommendations.
# == Usage
#  list_item = @browser.recommendations_list.at(0)
class GameStopRecommendationList < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _spec_:: WebSpec instance to be used for later calls to eval (if needed).
  def initialize(tag, spec)
    super(tag)
    @spec = spec
  end

  # Returns the number of items in the cart.
  def length
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end

    # The number of items one less than the number of tags in the list.
    return @tag.length - 1
  end
end

class GameStopDiscountPanel < CommonComponent
  # returns length of discounted items
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the GameStopDiscountPanel instance at a given index
  def at(index)
    return GameStopDiscountPanel.new(@tag.at(index), @browser)
  end

  # returns get_discount_amount
  def get_discount_amount
    tag = ToolTag.new(@tag.find.td.className("ats-confirmationdiscounttotal"), format_method(__method__))
    return GameStopDiscountPanel.new(tag, @browser)
  end
end

# == Overview
# Class for the shipping group panel on the Order History Details page. This is an incomplete component due to the lack of ats class name or unique identifier on the individual items ordered.
# TODO: FIXME
# The policy label and policy number label can possibly be displayed for multiple items ordered so the first instance will only be found until a list component for multiple items is defined.
# == Usage
#  @browser.shipping_group_panel.policy_label.should be_true
class GameStopShipGroupPanel < CommonComponent
  # Returns the Policy Number label for a purchased item
  def policy_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-policylbl")), format_method(__method__))
  end

  # Returns the policy number for a purchased item
  def policy_number_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-policynumlbl")), format_method(__method__))
  end

  # Returns the Shipment Method Name label
  def shipping_method_name_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-shipmethodnamelbl")), format_method(__method__))
  end

  # Returns the  Shipment Method Amount label
  def shipping_method_amount_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-shipmethodamtlbl")), format_method(__method__))
  end

  # Returns the Cancel This Shipment button
  def cancel_shipment_button
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-cancelshipmntbtn")), format_method(__method__))
  end

end

# == Overview
# Class for the digital shipping group panel on the Order History Details page. This is an incomplete component due to the lack of ats class name or unique identifier on the individual items ordered.
# TODO: FIXME
# The download code label can possibly be displayed for multiple digital items so the first instance will only be found until a list component for multiple items is defined.
# == Usage
#  @browser.digital_ship_group_panel.download_code_label.should be_true
class GameStopDigitalShipGroupPanel < CommonComponent
  # Returns the Policy Number label for a purchased item
  def download_code_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-dlcodelbl")), format_method(__method__))
  end

  # Returns the policy number for a purchased item
  def download_instructions_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.span.className(create_ats_regex_string("ats-dlinstructionslbl")), format_method(__method__))
  end

end

class GameStopGiftCardsPanel < CommonComponent
  # returns length of discounted items
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the GameStopGiftCardsPanel instance at a given index
  def at(index)
    return GameStopGiftCardsPanel.new(@tag.at(index), @spec)
  end

  # returns the digital_gift_card
  def digital_gift_card
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/rblGiftType_0/"), format_method(__method__))
  end

  def physical_gift_card
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/rblGiftType_1/"), format_method(__method__))
  end

  def gift_card_amounts
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.select.id("/ddlGiftCardAmounts/"), format_method(__method__))
  end

  def other_gift_amount
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/tbGiftAmount/"), format_method(__method__))
  end

  def gift_card_quantity
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.find.input.id("/tbGiftQuantity/"), format_method(__method__))
  end

end

class GameStopAOWPlans < CommonComponent
  # Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the GameStopAOWPlans instance at a given index
  def at(index)
    return GameStopAOWPlans.new(@tag.at(index), @spec)
  end

  # returns the plan details
  def plan_details
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.parent("p").find.a, format_method(__method__))
  end

  # returns the aow price
  def aow_price
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.parent("p").span, format_method(__method__))
  end

  # Returns the available warranty prices
  def available_values
    result = []
    for i in (0 .. @tag.length - 1)
      result << @tag[i].parent("p").span.innerText.strip if @tag[i].parent("p").span.exists
    end
    return result
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



