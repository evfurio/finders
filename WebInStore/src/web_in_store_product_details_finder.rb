module WebInStoreProductDetailsFinder

    # Returns Product Details label.
    def product_details_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-prodnamelbl")), __method__)
    end
	 # Returns Product Platform label.
    def product_platform_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-prodplatforms")), __method__)
    end

    # Returns Item added to cart label.
    def added_to_cart_label
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-itemaddedmsg")), __method__)
    end

    
    # Returns product sku.
    def product_sku
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-sku")), __method__)
    end

    # Returns product quantity field.
    def quantity_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-qtylbl")), __method__)
    end

    # Returns Add To Cart button.
    def add_to_cart_button
	puts "ADD TO CART!!!!!"
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-addtocartbtn")), __method__)
    end

    # Returns product condition.
    def product_condition
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-itemcondlbl")), __method__)
    end

    # Returns product price.
    def product_price
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-itempricelbl")), __method__)
    end
	def product_detail_price
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-itempricelbl")), __method__)
    end
    # Returns product description.
    def product_description
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-itemdesclbl")), __method__)
    end

    # Returns product image.
    def product_image
        $tracer.trace(__method__)
        return ToolTag.new(img.className(create_ats_regex_string("ats-wis-prodimg")), __method__)
    end

    # Returns user rating.
    def product_user_rating
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-userratinglbl")), __method__)
    end

    # Returns esrb ratings image.
    def esrb_rating_image
        $tracer.trace(__method__)
        return ToolTag.new(img.className(create_ats_regex_string("ats-wis-esrbratingimg")), __method__)
    end
	 # Returns sell sheet button.
    def sell_sheet_button
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-wis-sellsheetlink")), __method__)
    end
	 # Returns Product Summary.
    def product_summary
        $tracer.trace(__method__)
        return ToolTag.new(table.id(create_ats_regex_string("detailedProduct")), __method__)
    end

	def more_description
		$tracer.trace(__method__)
		return ToolTag.new(jquery("a[href*='#']"),__method__)
	end 

    # Returns checkout button.
    def checkout_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-checkoutbtn")), __method__)
    end

    # Returns label "Also Available New/Used" label if an other condition product exists.
    def also_available_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-alsoavailablelbl")), __method__)
    end

    # Returns 'Product Details' button.
    def product_details_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-searchproddetailsbtn")), __method__)
    end

    # Returns 'Age Verification Required' label.
    def age_verification_required_label
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-agewarningmsg")), __method__)
    end

    # Returns age warning checkbox.
    def age_warning_checkbox
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-ageverificationcheckbox")), __method__)
    end
		
		# Returns the aow panel
		def aow_panel
		  $tracer.trace(__method__)
			return ToolTag.new(div.className("buyboxwarranty"), __method__)
		end
			
		# Returns aow service plans
    def aow_service_plans
      $tracer.trace(__method__)
      return WebInStoreAOWPlans.new(ToolTag.new(input.id("warranty"), __method__), self)
    end

    # Returns the aow details back button
    def aow_details_back_button
      $tracer.trace(__method__)
      return ToolTag.new(button.className("ats-wis-backbtn"), __method__)
    end
		


end
