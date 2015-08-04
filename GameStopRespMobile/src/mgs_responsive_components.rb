require "bigdecimal"
	
class MGSReviewList < CommonComponent
	# Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the MGSReviewList instance at a given index
  def at(index)
    return MGSReviewList.new(@tag.at(index), @spec)
  end

  def tag_rating
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div, format_method(__method__))
  end
	
	def comment
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.p, format_method(__method__))
  end
end


class MGSRecommendationsList < CommonComponent
	# Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the MGSRecommendationsList instance at a given index
  def at(index)
    return MGSRecommendationsList.new(@tag.at(index), @spec)
  end

  def header
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.h3, format_method(__method__))
  end
	
	def description
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.h4, format_method(__method__))
  end
	
	def product_list
    $tracer.trace(format_method(__method__))
    # return ToolTag.new(@tag.find.li, format_method(__method__))
		return MGSRecoProdList.new(@tag.li.className(create_ats_regex_string("ats-prodReco-list")), format_method(__method__))
  end
end


class MGSRecoProdList < CommonComponent
	 # Returns the list length
  def length
		# If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end
	
  # Returns the product_list instance at a given index
  def at(index)
    $tracer.trace(format_method(__method__))
    return MGSRecoProdList.new(@tag.at(index), @spec)
  end

  def product_link
    $tracer.trace(format_method(__method__))
    # return ToolTag.new(@tag.a, format_method(__method__))
		return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-prodReco-lnk")), format_method(__method__))
  end
	
	def product_image
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-prodReco-img")), format_method(__method__))
  end
	
	def product_label
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-prodReco-name")), format_method(__method__))
  end
	# rating and price
end


class MGSSearchFilterList < CommonComponent
	# Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the MGSSearchFilterList instance at a given index
  def at(index)
    return MGSSearchFilterList.new(@tag.at(index), @spec)
  end

  def filter_header
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.h3, format_method(__method__))
  end
	
	def expand_collapse
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.h3.i, format_method(__method__))
  end
	
	def filter_items
    $tracer.trace(format_method(__method__))
		return MGSSearchFilterItems.new(@tag.ul.className(create_ats_regex_string("ats-searchMob-filterListItems")).li, format_method(__method__))
  end
end


class MGSSearchFilterItems < CommonComponent
	 # Returns the list length
  def length
		# If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end
	
  # Returns the product_list instance at a given index
  def at(index)
    $tracer.trace(format_method(__method__))
    return MGSSearchFilterItems.new(@tag.at(index), @spec)
  end

  def item_link
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.a, format_method(__method__))
  end
	
	def record_count
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.a.span, format_method(__method__))
  end
end


class MGSSearchBreadcrumbList < CommonComponent
	# Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the MGSSearchBreadcrumbList instance at a given index
  def at(index)
    return MGSSearchBreadcrumbList.new(@tag.at(index), @spec)
  end

  def selected_filter
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.span, format_method(__method__))
  end
	
	def remove_filter
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.i, format_method(__method__))
  end
end


class MGSSearchSortingList < CommonComponent
	# Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the MGSSearchSortingList instance at a given index
  def at(index)
    return MGSSearchSortingList.new(@tag.at(index), @spec)
  end

  def sort_name
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.a, format_method(__method__))
  end
end


class MGSSearchProductList < CommonComponent
	# Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    if (!@tag.exists)
      return 0
    end
    return @tag.length
  end

  # returns the MGSSearchProductList instance at a given index
  def at(index)
    return MGSSearchProductList.new(@tag.at(index), @spec)
  end
	
	def prod_lnk
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-searchMob-prodLnk")), format_method(__method__))
  end

  def prod_img
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-searchMob-prodImg")).img, format_method(__method__))
  end
	
	def prod_info
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-searchMob-prodInfo")), format_method(__method__))
  end
	
	def prod_title
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-searchMob-prodName")), format_method(__method__))
  end
	
	def prod_platform
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-searchMob-prodPlatform")), format_method(__method__))
  end
	
	def prod_release
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-searchMob-prodRelease")), format_method(__method__))
  end
	
	def prod_puas
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-searchMob-prodPuas")), format_method(__method__))
  end
	
	def prod_price
    $tracer.trace(format_method(__method__))
    return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-searchMob-prodPrice")), format_method(__method__))
  end
end









