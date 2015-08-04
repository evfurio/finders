module WebInStoreShippingOptionsFinder

 ##################### CONFIRMATION PAGE FINDERS  TODO: need to move into a separate file ############################
   	 
	def order_number
	    $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-ordernumber")), __method__)
	end
	
	def order_date
	    $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-orderdate")), __method__)
	end

    def ship_method
	    $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-shippingmethod")), __method__)
	end
	
    def bar_code
        $tracer.trace(__method__)
        return ToolTag.new(img.className(create_ats_regex_string("ats-wis-barcodeimg")), __method__)
    end
	
	def order_number_from_barcode
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-barcode")), __method__)
	end
  
	def order_items
        $tracer.trace(__method__)
        return WebInStoreProduct.new(ToolTag.new(div.className("orderitems").table.tr, __method__))
    end
	
	def web_order_text
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-orderconfirmationtxt")), __method__)
	end
	
	def shipping_status
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-shipstatus")), __method__)
	end
	
	def order_ups_tracking_label
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-trackingheaderlbl")), __method__)
	end
	
########### END OF CONFIRMATION PAGE FINDERS ####################################################################	
##################### ORDER REVIEW PAGE FINDERS  TODO: need to move into a separate file ############################	

 	def order_estimated_delivery
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-wis-estimateddeliverydate")), __method__)
	end
	
	def order_promo_code
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-wis-promocodereview")), __method__)
	end
	def order_promo_code_field
		$tracer.trace(__method__)
		return ToolTag.new(input.className(create_ats_regex_string("ats-wis-promocode")), __method__)
	end
	def apply_promo_button
		$tracer.trace(__method__)
	return ToolTag.new(button.className(create_ats_regex_string("ats-wis-applypromobtn")), __method__)
	end
	
	
########### END OF ORDER REVIEW PAGE FINDERS ####################################################################
	
	def search_customer_by_pur
		$tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-searchPUR")), __method__)
    end
	
	
	def search_customer_button
		$tracer.trace(__method__)
	    return ToolTag.new(button.className(create_ats_regex_string("ats-wis-search")), __method__)
	end
	
	def select_customer_button
		$tracer.trace(__method__)
		#return ToolTag.new(button("Select"), __method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-wis-custselectbtn")), __method__)
	end
	
	def cart_message
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-cartmsg")), __method__)
    end

    # Returns "Shipping Options" label.
    def shipping_options_label
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-shippingoptionslbl")), __method__)
    end

    # Returns shipping options radio selector for 'Shipping Options'.
    def handling_method_buttons
        $tracer.trace(__method__)
        # unit_test_no_generate: handling_method_buttons, input.className(create_ats_regex_string("ats-wis-shippingoptions")).parent("div").at(1); WebInStoreRadioButtons
        return WebInStoreRadioButtons.new(ToolTag.new(input.className(create_ats_regex_string("ats-wis-shippingoptions")).parent("div").at(1), __method__, self), self)
    end

    # Returns gift message checkbox.
    def gift_message_checkbox
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-giftmsgcheckbox")).input, __method__)
    end

    # Returns gift message textarea (textbox).
    def gift_message_field
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-giftmsgtxtbox")).textarea, __method__)
    end

    # Returns 'Address Information' label.
    def address_information_label
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-addressinfolbl")), __method__)
    end

    # Returns address first name.
    def first_name
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-addrfname")), __method__)
    end

    # Returns address last name.
    def last_name
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-addrlname")), __method__)
    end

    # Returns address line.
    def address_line1
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-addrline1")), __method__)
    end

    # Returns address city.
    def address_city
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-addrcity")), __method__)
    end

    # Returns address state.
    def address_state
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-addrstate")), __method__)
    end

    # Returns address zip.
    def address_postal_code
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-addrzip")), __method__)
    end

    # Returns email address.
    def address_email
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-addremail")), __method__)
    end

    # Returns shipping method label.
    def shipping_method_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-shipmethodlbl")), __method__)
    end

    # Returns shipping method type.
    def shipping_method
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-shipmethod")), __method__)
    end

    # Returns 'Sale Tax' label.
    def sales_tax_label
        $tracer.trace(__method__)
        return ToolTag.new(label.className(create_ats_regex_string("ats-wis-taxlbl")), __method__)
    end

    # Returns sales tax amount.
    def sales_tax_amount
        $tracer.trace(__method__)
		return ToolTag.new(td.className(create_ats_regex_string("ats-wis-tax")), __method__)
    end

    # Returns 'Submit' button.
    def submit_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-checkoutbtn")), __method__)
    end
	
	
	def shipping_cost
	    $tracer.trace(__method__)
	    return ToolTag.new(jquery("td[class~='ats-wis-shippingprice'], td[id~='span_shippingCost']"), __method__)
    end
	
	
	def product_list
        $tracer.trace(__method__)
        return WebInStoreProduct.new(ToolTag.new(table.id(create_ats_regex_string("carttable")).tr, __method__))
    end
	
	#returns shipping restriction message
	def shippingrestriction_message
		$tracer.trace (__method__)
		return ToolTag.new(jquery("div[class~='ats-wis-errormsgpanel'], span[class~='ats-errormsg']"), __method__)
	end
	
	#Returns Product Line Item Title in Shipping Options Page
	def product_title
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-producttitle")), __method__)
    end
	
	#Returns Product Line Item Price in Cart Page
	def product_price
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-price")), __method__)
    end
	
	#Returns Product Line Item Qty in Cart Page
	def quantity_field
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-quantity")), __method__)
    end
	
	#Returns Promo Code
	def shipping_promo_code
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-promocodeshipping")), __method__)
    end
end

