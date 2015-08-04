# == Overview
# Parent class for other selectors. Holds common methods.
# == Usage
#  @browser.country_selector.value = "Norway"
#  @browser.country_selector.value.should == "Norway"

class WebInStoreSelector < CommonComponent
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
  def value()
    $tracer.trace("\tAction: #{format_method(__method__)}")
    @tag.option.selected(true).innerText.strip
  end
end

# == Overview
# Class for the radio buttons.
# == Usage
#  @browser.handling_method_buttons.value = "Standard"
#  @browser.handling_method_buttons.value.should == "Standard"

class WebInStoreRadioButtons < CommonComponent
  # Sets the specified abbreviation's value to checked. A _Tool_Exception_
  # will be raised if the specified value is not the abbreviation
  # for one of the valid button values.
  # === Parameters:
  # _v_:: value to set the selector to.
  def value=(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    begin
      tag = @tag.find.label("/#{v}/").parent("div").find.input
      tag.should_exist
    rescue Exception => e
      raise ToolException.new(e, %Q["#{v}" is not a valid option for #{@tag.tag_name}])
    end
    tag.checked = true
  end

  def isexist(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    begin
	 
	
      tag = @tag.find.label("/#{v}/").parent("div").find.input
	 
      tag.should_exist
	   return true
    rescue Exception => e
	 
	  return false
      # raise ToolException.new(e, %Q["#{v}" is not a valid option for #{@tag.tag_name}])
    end
  end
  
   def is_label_exist(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    begin
      tag = @tag.find.label("/#{v}/")
      tag.should_exist
	   return true
    rescue Exception => e
	  # return false
      raise ToolException.new(e, %Q["#{v}" is not a valid option for #{@tag.tag_name}])
    end
  end
  
  
  # Returns the value currently set as the checked. Returns an empty string
  # if nothing is checked.
  def value()
    $tracer.trace("\tAction: #{format_method(__method__)}")
    input_list = @tag.find.input.className("ats-wis-shippingoptions")
    for i in 0..(input_list.length - 1)
      return @tag.find.label.at(i).innerText.strip if input_list.at(i).checked == "true"
    end

    return ""
  end
end


# == Overview
# This class houses and provides finders for a cart list. This list is
# typically generated as the result of a search.
# == Usage
#  list_item = @browser.cart_list.at(0)
class WebInStoreCartList < CommonComponent

  MULTIPLIER = 3 # each item is comprised of 3 entries (product, sku, visual line (in this order)).
  OFFSET = 1     # first item starts at an offset of 1.

  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  def initialize(tag)
    super(tag)
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a WebInStoreCartListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    return WebInStoreCartListItem.new(@tag, ((index * MULTIPLIER) + OFFSET))
  end

  # Returns the number of products in the list.
  def length()
    offset = 1 # offset is reference starting point
    # If there are no items, return 0 for the length.
    if(!@tag.exists)
      return 0
    end

    return ((@tag.length - OFFSET) / MULTIPLIER)
  end
end

# == Overview
# This class houses and provides finders for a cart list item.
# == Usage
#  @browser.cart_list.at(0).product_title.inner_text
class WebInStoreCartListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _index_:: actual index of item's first entry.
  def initialize(tag, index)
    @index = index # first element of 3 (prod, sku, visual line)
    super(tag)
  end

  # Returns product title.
  def line_item_title
    formatted_method = format_method(__method__)
    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).span.className(create_ats_regex_string("ats-wis-lineitemprodtitle")), formatted_method)
  end

  # Returns product price.
  def line_item_price
    formatted_method = format_method(__method__)
    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).span.className(create_ats_regex_string("ats-wis-lineitemprice")), formatted_method)
  end

  # Returns product quantity field.
  def line_item_quantity
    formatted_method = format_method(__method__)
    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).input.className(create_ats_regex_string("ats-wis-lineitemqty")), formatted_method)
  end

  # Returns product sku.
  def line_item_sku
    formatted_method = format_method(__method__)
    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at((@index + 1)).span.className(create_ats_regex_string("ats-wis-lineitemsku")), formatted_method)
  end

  # Return delete button.
  def delete_button
    formatted_method = format_method(__method__)
    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).a.className(create_ats_regex_string("ats-wis-deleteitembtn")), formatted_method)
  end

end

# == Overview
# This class houses and provides finders for a cart list. This list is
# typically generated as the result of a search.
# Needs to be renamed to indicate this is the product list in the cart/order history details.
# Originally from web_in_store_product_list.rb
# == Usage
#  list_item = @browser.product_list.at(0)
class WebInStoreProduct < CommonComponent

  MULTIPLIER = 3 # each item is comprised of 3 entries (product, sku, visual line (in this order)).
  OFFSET = 1     # first item starts at an offset of 1.

  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  def initialize(tag)

    super(tag)
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a WebInStoreProductListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    return WebInStoreProductListItems.new(@tag, ((index * MULTIPLIER) + OFFSET))
  end

  # Returns the number of products in the list.
  def length()
    offset = 1 # offset is reference starting point
    # If there are no items, return 0 for the length.
    if(!@tag.exists)
      return 0
    end

    return ((@tag.length - OFFSET) / MULTIPLIER)
  end
end

# == Overview
# This class houses and provides finders for a cart list item.
# Needs to be renamed to indicate this is the product list in the cart/order history details.
# Originally from web_in_store_product_list.rb
# == Usage
#  @browser.product_list.at(0).product_title.inner_text
class WebInStoreProductListItems < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _index_:: actual index of item's first entry.
  def initialize(tag, index)
    @index = index # first element of 3 (prod, sku, visual line)
    super(tag)
  end

  # Returns product title.
  def product_title
    formatted_method = format_method(__method__)
    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).span.className(create_ats_regex_string("ats-wis-producttitle")), formatted_method)
  end

  # Returns product price.
  def product_price
    formatted_method = format_method(__method__)
    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).span.className(create_ats_regex_string("ats-wis-price")), formatted_method)
  end

  # Returns product quantity field.
  def quantity_field
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).span.className(create_ats_regex_string("ats-wis-quantity")), formatted_method)
  end

  # Returns product sku.
  def product_sku
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at((@index + 1)).span.className(create_ats_regex_string("ats-wis-sku")), formatted_method)
  end

  # Return delete button.
  def delete_button
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).a.className(create_ats_regex_string("ats-wis-deleteitembtn")), formatted_method)
  end

  def policy_number_label
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).span.className(create_ats_regex_string("ats-wis-policynumlbl")), formatted_method)
  end

end


# == Overview
# This class houses and provides finders for a product list. This list is
# typically generated as the result of a search.
# Needs to be renamed to indicate these are product search results.
# Originally was in the web_in_store_search_list file.
# == Usage
#  list_item = @browser.product_list.at(0)
class WebInStoreProductList < CommonComponent

  MULTIPLIER = 2 # two entries per item (product, sku (in order))

  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  def initialize(tag)
    super(tag)
  end

  # Returns the product item at the specified index from the list. The item
  # is returned as a WebInStoreProductListItem; see it's documentation
  # for additional usage examples.
  # === Parameters:
  # _index_:: zero-based index of the product to be retrieved from the list.
  def at(index)
    return WebInStoreProductListItem.new(@tag, (index * MULTIPLIER))
  end

  # Returns the number of products in the list.
  def length()
    # If there are no items, return 0 for the length.
    if(!@tag.exists)
      return 0
    end

    return @tag.length / MULTIPLIER
  end
end

# == Overview
# This class houses and provides finders for a product list item.
# Originally was in the web_in_store_search_list file.
# Needs to be renamed to indicate these are product search results.
# == Usage
#  @browser.product_list.at(0).product_sku.inner_text
class WebInStoreProductListItem < CommonComponent
  # Creates new instance.
  # === Parameters:
  # _tag_:: WebSpec tag being stored.
  # _index_:: actual index of item's first entry.
  def initialize(tag, index)
    @index = index
    super(tag)
  end

  # Returns product title.
  def product_title
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).a.className(create_ats_regex_string("ats-wis-searchprodtitle")).label, formatted_method)
  end

  # Returns product title link.
  def product_title_link
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).a.className(create_ats_regex_string("ats-wis-searchprodtitle")), formatted_method)
  end

  # Returns product price.
  def product_price
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).span.className(create_ats_regex_string("ats-wis-searchprice")), formatted_method)
  end

  # Returns product details button.
  def product_details_button
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at(@index).button.className(create_ats_regex_string("ats-wis-searchproddetailsbtn")), formatted_method)
  end

  # Returns product sku.
  def product_sku
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.at((@index + 1)).span.className(create_ats_regex_string("ats-wis-searchsku")).label, formatted_method)
  end

end

class WebInStoreAOWPlans < CommonComponent
	
	# Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the WebInStoreAOWPlans instance at a given index
  def at(index)
    return WebInStoreAOWPlans.new(@tag.at(index), @spec)
  end

  # returns the plan details
  def plan_details
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.parent("li").find.a, format_method(__method__))
  end
	
	# returns the aow price
  def aow_price
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.parent("li").span, format_method(__method__))
  end
		
	# Returns the available warranty prices
  def available_values
    result = []
    for i in (0 .. @tag.length - 1)
      result << @tag[i].parent("li").span.innerText.strip if @tag[i].parent("li").span.exists
    end
    return result
  end

end