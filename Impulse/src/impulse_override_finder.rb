# This file contains the module for finders that are overriden by ImpulseClient.
#
# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2012 GameStop, Inc.
# Not for external distribution.

# == Overview
# This module contains finders that are overriden by ImpulseClient.
module ImpulseOverrideFinder
  # Returns the search field.
  def search_field
    $tracer.trace(__method__)
    # unit_test_no_generate: search_field, input.className(create_ats_regex_string("ats-search-field")).at(0)
    return ToolTag.new(input.className(create_ats_regex_string("ats-search-field")).at(0), __method__, self)
  end

	# Returns the product list.
	def product_list
		$tracer.trace(__method__)
		# unit_test: product_list, table.className(create_ats_regex_string("ats-product-list")).find.tbody.find.tr; ImpulseSearchProductList
		tag = ToolTag.new(table.className(create_ats_regex_string("ats-product-list")).find.tbody.find.tr, __method__, self)
		return ImpulseSearchProductList.new(tag, self)
	end

    # Returns the PUR save button on the cart.
    def cart_pur_save_button
        # unit_test_no_generate: cart_pur_save_button, input.className(create_ats_regex_string("ats-pur-number-save-button"))
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string("ats-pur-number-save-button")), __method__, self)
    end

end
