module WebInStoreOrderLookupFinder
    # Returns 'Order #' field.
    def order_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-ordernumber")), __method__)
    end

    # Returns 'PUR #' field.
    def pur_field
        $tracer.trace(__method__)
        #return ToolTag.new(input.className(create_ats_regex_string("(ats-wis-pur|ats-wis-searchPUR)")), __method__)
        return ToolTag.new(jquery("input[class~='ats-wis-pur'], input[class~='ats-wis-searchPUR']"), __method__)
    end

    # Returns 'GO' button.
    def go_button
        $tracer.trace(__method__)
        #return ToolTag.new(button.className(create_ats_regex_string("(ats-wis-orderlookupsubmitbtn|ats-wis-search)")), __method__)
        return ToolTag.new(jquery("button[class~='ats-wis-orderlookupsubmitbtn'], button[class~='ats-wis-search']"), __method__)
    end
	
	# Returns 'View' link.
    def view_link
        $tracer.trace(__method__)
        return ToolTag.new(jquery("td[class~='ats-wis-vieworder']"), __method__)
    end
	
	def order_number_header
        $tracer.trace(__method__)
		    return ToolTag.new(div.className(create_ats_regex_string("ats-wis-ordernumberheader")), __method__)
    end
	
	def order_date_header
        $tracer.trace(__method__)
		    return ToolTag.new(div.className(create_ats_regex_string("ats-wis-orderdateheader")), __method__)
    end
	def order_name_header
        $tracer.trace(__method__)
		    return ToolTag.new(div.className(create_ats_regex_string("ats-wis-nameheader")), __method__)
    end
	def order_email_header
        $tracer.trace(__method__)
		    return ToolTag.new(div.className(create_ats_regex_string("ats-wis-emailheader")), __method__)
    end
	def order_phone_header
        $tracer.trace(__method__)
		    return ToolTag.new(div.className(create_ats_regex_string("ats-wis-phoneheader")), __method__)
    end
	def order_pur_header
        $tracer.trace(__method__)
		    return ToolTag.new(div.className(create_ats_regex_string("ats-wis-PURheader")), __method__)
    end
end
