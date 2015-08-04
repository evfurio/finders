module WebInStoreSearchFinder

    # Returns 'Search Results' label.
    def search_results_label
        $tracer.trace(__method__)
        return ToolTag.new(span.className(create_ats_regex_string("ats-wis-searchresultslbl")), __method__)
    end

    # Returns product search list.
    def search_product_list
        $tracer.trace(__method__)
        return WebInStoreProductList.new(ToolTag.new(div.className(create_ats_regex_string("productsearchitems")).tr, __method__))
    end

end

