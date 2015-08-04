module WebInStoreCartFinder

    # Returns cart list.
    def cart_list
        $tracer.trace(__method__)
        return WebInStoreCartList.new(ToolTag.new(table.id("carttable0").tr, __method__))
    end

    # Returns cart label.
    def cart_label
        $tracer.trace(__method__)
        return ToolTag.new(h2.className(create_ats_regex_string("ats-wis-cartlbl")), __method__)
    end

    # Returns 'Update' button.
    def update_button
        $tracer.trace(__method__)
        return ToolTag.new(button.className(create_ats_regex_string("ats-wis-updatebtn")), __method__)
    end

    # Returns 'SUBTOTAL' label.
    def subtotal_label
	    $tracer.trace(__method__)
        return ToolTag.new(td.className(create_ats_regex_string("ats-wis-subtotallbl")), __method__)
    end

    # Returns sub-total amount.
    def subtotal_amount
        $tracer.trace(__method__)
        return ToolTag.new(td.className(create_ats_regex_string("ats-wis-subtotal")), __method__)
    end

    # Returns 'Discount' label.
    def discount_label
        $tracer.trace(__method__)
        #return ToolTag.new(td.className(create_ats_regex_string("ats-wis-discountlbl")), __method__)
        return ToolTag.new(jquery("td[class~='ats-wis-discountlbl'], label[class~='ats-wis-discountlbl']"), __method__)
    end

    # Returns dicount amount.
    def discount_amount
        $tracer.trace(__method__)
        #return ToolTag.new(span.className(create_ats_regex_string("ats-wis-discount")), __method__)
        return ToolTag.new(jquery("span[class~='ats-wis-discount'], td[class~='ats-wis-discount']"), __method__)
    end

    # Returns 'ORDER TOTAL' label.
    def order_total_label
        $tracer.trace(__method__)
        #return ToolTag.new(td.className(create_ats_regex_string("ats-wis-ordertotallbl")), __method__)
        return ToolTag.new(jquery("td[class~='ats-wis-ordertotallbl'], label[class~='ats-wis-ordertotallbl']"), __method__)
    end

    # Returns order total amount.
    def order_total_amount
        $tracer.trace(__method__)
        return ToolTag.new(td.className(create_ats_regex_string("ats-wis-ordertotal")), __method__)
    end

    # Returns cart note.
    def cart_note
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-cartnote")), __method__)
    end

    # Returns error message.
    def error_msg
        $tracer.trace(__method__)
        return ToolTag.new(div.className(create_ats_regex_string("ats-wis-errormsgpanel")), __method__)
    end

    # Returns 'Continue' button.
    def continue_button
        $tracer.trace(__method__)
        #return ToolTag.new(button.className(create_ats_regex_string("(ats-wis-checkoutbtn|imgbtnnext)")), __method__)
        return ToolTag.new(jquery("button[class~='ats-wis-checkoutbtn'], button[class~='imgbtnnext']"), __method__)
    end
	
	
	def cart_quantity_field()
       $tracer.trace(__method__)
       return ToolTag.new(input.id(create_ats_regex_string("quantity")), __method__)
	end
	
	#Returns Product Line Item Title
	def line_item_title
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-lineitemprodtitle")), __method__)
    end
	
	#Returns Product Line Item Price
	def line_item_price
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-lineitemprice")), __method__)
    end
	
	#Returns Product Line Item Qty
	def line_item_quantity
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-wis-lineitemqty")), __method__)
    end

end
