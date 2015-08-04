module WebInStoreHeaderFooterFinder

    # Returns gamestop logo image.
    def gamestop_logo
        $tracer.trace(__method__)
	    return ToolTag.new(a.className(create_ats_regex_string("ats-wis-gslogo")), __method__)
    end

    # Returns Clear Customer Info button.
    def clear_customer_info_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-clearcustinfobtn")), __method__)
    end

    # Returns Customer Info.
    def customer_info
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-custinfo")), __method__)
    end

    # Returns Press ESC to Close label.
    def esc_to_close_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("closebtn")), __method__)
    end

    # Returns Expanded Selection Best Sellers button.
    def best_sellers_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-bestsellers")), __method__)
    end

    # Returns Order Lookup button.
    def order_lookup_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-orderlookup")), __method__)
    end

    # Returns View Cart button.
    def view_cart_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-viewcartbtn")), __method__)
    end

    # Returns Search field.
    def search_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-searchfield")), __method__)
    end

    # Returns Search All button.
    def search_all_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-searchallbtn")), __method__)
    end

    # Returns Search Exp. Selection button.
    def search_exp_selection_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-searchonlineonlybtn")), __method__)
    end
	
	   # Returns Search  button.
    def search_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-searchgobtn")), __method__)
    end
	  # Returns pagination.
    def pagination_field
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("pager")), __method__)
    end
	
	def search_product_name
        $tracer.trace(__method__)
        return ToolTag.new(td.className(create_ats_regex_string("searchdispname")), __method__)
	end

		
	def out_of_stock_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-catalogoutofstock")), __method__)
	end	
	
	def order_number_list
        $tracer.trace(__method__)
        return ToolTag.new(td.className(create_ats_regex_string("ats-wis-ordernumber")), __method__)
	end	
	def shipping_header
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-shippingmethod")), __method__)
	end	
	
	def low_stock_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-cataloglowstock")), __method__)
	end	
	
	
	def category_drop_down
        $tracer.trace(__method__)
        # return ToolTag.new(self.select.id("Category"), __method__)
		return WebInStoreSelector.new(ToolTag.new(jquery("select[class~='ats-wis-categorydropdwn']:visible"), __method__))
	end	

	
		
	def search_result_label
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-searchresultslbl")), __method__)
	end	
	
	def product_search_list
        $tracer.trace(__method__)
        return WebInStoreProductList.new(ToolTag.new(table.className(create_ats_regex_string("productsearch")).tr, __method__))
    end
	
	def home_page
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-homepage")), __method__)
    end
	
	def message
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("bigmessage")), __method__)
    end
	
	def view_tracking_details_link
	$tracer.trace(__method__)
	return ToolTag.new(jquery("a[href*='/Checkout/instore/Order/TrackingDetails?']"),__method__)
  end 
  
  def tracking_details_fields
	$tracer.trace(__method__)
	return ToolTag.new(div.className(create_ats_regex_string("orderdet")), __method__)
  end 
  
   def tracking_label
	$tracer.trace(__method__)
	return ToolTag.new(label.className(create_ats_regex_string("ats-wis-trackingheaderlbl")), __method__)
  end 
  
  
   # Returns shipping options radio selector for 'Shipping Options'.
    def shipment_progress
        $tracer.trace(__method__)
        # unit_test_no_generate: handling_method_buttons, input.className(create_ats_regex_string("ats-wis-shippingoptions")).parent("div").at(1); WebInStoreRadioButtons
        return WebInStoreRadioButtons.new(ToolTag.new(table.id(create_ats_regex_string("shipmentprogress")), __method__, self), self)
    end
	
	def best_selling_sort
		$tracer.trace(__method__)
		return ToolTag.new(a.id(create_ats_regex_string("bestselling")), __method__)
	end 
	
	def drop_ship_badge
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-catalogdropship")), __method__)
	end	
	
	def error_message
        $tracer.trace(__method__)
        return ToolTag.new(div.id(create_ats_regex_string("errmsg")), __method__)
	end	
	
	def shipping_search_result
        $tracer.trace(__method__)
        return ToolTag.new(td.className(create_ats_regex_string("searchhead")), __method__)
	end	
	
	
	def disabled_button
		$tracer.trace(__method__)
		return ToolTag.new(jquery("button[class='addtocart redbutton_gray ats-wis-addtocartbtn']"),__method__)
	end 
	
	def empty_cart_message
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("emptyCartMsg")),__method__)
	end 
	
	def sort_best_selling
		$tracer.trace(__method__)
		return ToolTag.new(a.id(create_ats_regex_string("bestselling")),__method__)
	end
 	
	def sort_price
		$tracer.trace(__method__)
		return ToolTag.new(a.id(create_ats_regex_string("price")),__method__)
	end 
	def sort_release_date
		$tracer.trace(__method__)
		return ToolTag.new(a.id(create_ats_regex_string("releasedate")),__method__)
	end 
	
	def product_search_sku
		$tracer.trace(__method__)
		return ToolTag.new(tr.className(create_ats_regex_string("productsearchsku")),__method__)
	end
	
end

