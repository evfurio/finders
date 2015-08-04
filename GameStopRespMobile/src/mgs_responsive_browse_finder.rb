module GameStopRespMobileBrowseFinder

  # Returns mgs_search_left_section
  def mgs_search_left_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-leftSection")), __method__)
	end

	# Returns mgs_search_breadcrumb_section
  def mgs_search_breadcrumb_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-breadcrumb")), __method__)
	end
	
			# Returns mgs_search_breadcrumb_header
			def mgs_search_breadcrumb_header
				$tracer.trace(__method__)
				return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-brdcrmbHdr")), __method__)
			end
		
			# Returns mgs_search_breadcrumb_list
			def mgs_search_breadcrumb_list
				$tracer.trace(__method__)
				return MGSSearchBreadcrumbList.new(ToolTag.new(ul.className(create_ats_regex_string("ats-searchMob-brdcrmbList")).li, __method__), self)
			end
	
	# Returns mgs_search_filter_section
  def mgs_search_filter_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-filterSection")), __method__)
	end
	
			# Returns mgs_search_filter_list
			def mgs_search_filter_list
				$tracer.trace(__method__)
				return MGSSearchFilterList.new(ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-filterList")), __method__), self)
			end
	
	# Returns mgs_search_main_section
  def mgs_search_main_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-mainSection")), __method__)
	end
	
	
			# Returns mgs_search_filter_btn
			def mgs_search_filter_btn
				$tracer.trace(__method__)
				return ToolTag.new(button.className(create_ats_regex_string("ats-searchMob-filterBtn")), __method__)
			end
			
			# Returns mgs_search_result_hdr
			def mgs_search_result_hdr
				$tracer.trace(__method__)
				return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-mainSection")).h3, __method__)
			end
	
	# Returns mgs_search_sort_section
  def mgs_search_sort_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-sortingSection")), __method__)
	end
	
			# Returns mgs_search_sort_list
			def mgs_search_sort_list
				$tracer.trace(__method__)
				# return ToolTag.new(ul.className(create_ats_regex_string("ats-searchMob-sortingList")).li, __method__)
				return MGSSearchSortingList.new(ToolTag.new(ul.className(create_ats_regex_string("ats-searchMob-sortingList")).li, __method__), self)
			end

	# Returns mgs_search_record_section
  def mgs_search_record_section
		$tracer.trace(__method__)
		return ToolTag.new(nav.className(create_ats_regex_string("ats-searchMob-recordsSection")), __method__)
	end	
	
			# Returns mgs_search_record_lbl
			def mgs_search_record_lbl
				$tracer.trace(__method__)
				return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-showRecords")).strong, __method__)
			end	
	
	# Returns mgs_search_prodlist_section
  def mgs_search_prodlist_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-prodResultsSection")), __method__)
	end
	
			# Returns mgs_search_product_list
			def mgs_search_product_list
				$tracer.trace(__method__)
				return MGSSearchProductList.new(ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-prodList")), __method__), self)
			end
	
	# Returns mgs_search_load_more
  def mgs_search_load_more
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-searchMob-loadMore")), __method__)
	end

end