module GameStopRespMobileProductDetailFinder

	########################################## ZEN =7 
	# Returns the mgs_prodzen_section
  def mgs_prodzen_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodZen-section")), __method__)
	end

	# Returns the mgs_prodzen_image 
  def mgs_prodzen_image
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodZen-image")), __method__)
	end
	
	# Returns the mgs_prodzen_label
  def mgs_prodzen_label
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodZen-label")), __method__)
	end
	
	def mgs_prodzen_display_name
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodZen-label")).h1, __method__)
	end
	
	def mgs_prodzen_platform
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodZen-label")).h4, __method__)
	end
	
	# Returns the mgs_prodzen_release_date
  def mgs_prodzen_release_date
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodZen-releaseDate")), __method__)
	end
	
	# Returns the mgs_prodzen_rating
  def mgs_prodzen_rating
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodZen-rating")), __method__)
	end
	
	########################################## Purchase = 14 + 2
	
	# Returns the mgs_product_purchaseopt_section
  def mgs_product_purchaseopt_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodPurchaseOpt-section")), __method__)
	end
	
	# Returns the mgs_shipopt_section
  def mgs_shipopt_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-shipOpt-section")), __method__)
	end
  
	# Returns the mgs_shipopt_list
  def mgs_shipopt_list
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-shipOpt-section")).ul.li, __method__)
	end
	
	# Returns the mgs_shipopt_homestore_icon
  def mgs_shipopt_homestore_icon
		$tracer.trace(__method__)
		return ToolTag.new(i.className(create_ats_regex_string("ats-shipOpt-homestoreIcon")), __method__)
	end
	
	# Returns the mgs_shipopt_puas
  def mgs_shipopt_puas
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-shipOpt-puas")), __method__)
	end
	
	# Returns the mgs_shipOpt_availability_section
  def mgs_shipopt_availability_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-shipOpt-availabilitySection")), __method__)
	end
	
	# Returns the mgs_shipOpt_availability_section
  def mgs_shipopt_new_icon
		$tracer.trace(__method__)
		return ToolTag.new(i.className(create_ats_regex_string("ats-shipOpt-newIcon")), __method__)
	end
	
	# Returns the mgs_shipOpt_used_icon
  def mgs_shipopt_used_icon
		$tracer.trace(__method__)
		return ToolTag.new(i.className(create_ats_regex_string("ats-shipOpt-usedIcon")), __method__)
	end
	
	# Returns the mgs_shipOpt_other_availstore
  def mgs_shipopt_other_availstore
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-shipOpt-otherStoreAvail")), __method__)
	end
	
	# Returns the mgs_shipOpt_availstore
  def mgs_shipopt_availstore
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-shipOpt-storeAvail")), __method__)
	end
	
	# Returns the mgs_purchaseopt_section
  def mgs_purchaseopt_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-purchaseOpt-section")), __method__)
	end
	
	# Returns the mgs_purchaseopt_list
  def mgs_purchaseopt_list
		$tracer.trace(__method__)
		return ToolTag.new(ul.className(create_ats_regex_string("ats-purchaseOpt-list")).li, __method__)
	end
	
	# Returns the mgs_purchaseopt_label
  def mgs_purchaseopt_label
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-purchaseOpt-label")), __method__)
	end
	
	# Returns the mgs_purchaseopt_condition
  def mgs_purchaseopt_condition
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-purchaseOpt-condition")), __method__)
	end
	
	# Returns the mgs_purchaseopt_onlineonly
  def mgs_purchaseopt_onlineonly
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-purchaseOpt-onlineOnly")), __method__)
	end
	
	# Returns the mgs_purchaseopt_price
  def mgs_purchaseopt_price
		$tracer.trace(__method__)
		return ToolTag.new(span.className(create_ats_regex_string("ats-purchaseOpt-price")), __method__)
	end	
	
	########################################## Tabs = 4
	
	# Returns the mgs_tabs_content_slot
  def mgs_tabs_content_slot
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-tabs-contentSlot")).div, __method__)
	end
		
  def mgs_tab_details
		$tracer.trace(__method__)
		return ToolTag.new(div.id("tab-Details"), __method__)
	end

  def mgs_tab_images
		$tracer.trace(__method__)
		return ToolTag.new(div.id("tab-Images"), __method__)
	end

	def mgs_tab_videos
		$tracer.trace(__method__)
		return ToolTag.new(div.id("tab-Videos"), __method__)
	end	

	#------------------------------------------------------------- 3
	def mgs_tab_details_text
		$tracer.trace(__method__)
		return ToolTag.new(div.id("tab-Details").div, __method__)
	end
	
	def mgs_tab_details_more
		$tracer.trace(__method__)
		# return ToolTag.new(a.className("/rightAlignedArrow down/"), __method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-tabDetails-more")), __method__)
	end
	
	def mgs_tab_details_less
		$tracer.trace(__method__)
		# return ToolTag.new(a.className("/rightAlignedArrow up/"), __method__)
		return ToolTag.new(a.className(create_ats_regex_string("ats-tabDetails-less")), __method__)
	end
	
	#------------------------------------------------------------- 5
	def mgs_tab_images_list
		$tracer.trace(__method__)
		# return ToolTag.new(ul.className("screenshotList").li, __method__)
		return ToolTag.new(ul.className(create_ats_regex_string("ats-imagesList")).li, __method__)
	end
	
	def mgs_modal_image_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-modal-images")), __method__)
	end
	
	def mgs_modal_image_close
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-close-imageModal")), __method__)
	end
	
	def mgs_modal_image_featured
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-image-featured")), __method__)
	end
	
	def mgs_modal_image_list
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-image-carousel")), __method__)
	end
	
	#------------------------------------------------------------- 5
	def mgs_tab_videos_list
		$tracer.trace(__method__)
		# return ToolTag.new(div.id("videosList").ul.li, __method__)
		return ToolTag.new(ul.className(create_ats_regex_string("ats-videosList")).li, __method__)
	end
	
	def mgs_modal_video_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-modal-videos")), __method__)
	end
	
	def mgs_modal_video_close
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-close-videoModal")), __method__)
	end
	
	def mgs_modal_video_list
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-video-carousel")), __method__)
	end
	
	def mgs_modal_video_player
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-video-player")), __method__)
	end
	
	########################################## Reviews = 4
	
	# Returns the mgs_prodreviews_section
  def mgs_prodreviews_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodReviews-section")), __method__)
	end

	# Returns the mgs_prodreviews_readall_link
  def mgs_prodreviews_readall_link
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodReviews-section")).a, __method__)
	end
	
	# Returns the mgs_prodreviews_label
  def mgs_prodreviews_label
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodReviews-section")).h3, __method__)
	end
	
	# Returns the mgs_prodreviews_list
  def mgs_prodreviews_list
		$tracer.trace(__method__)
		return MGSReviewList.new(ToolTag.new(div.className(create_ats_regex_string("ats-prodReviews-section")).ul.li, __method__), self)
	end
	
	########################################## ESRB = 5
	
	# Returns the mgs_prodrating_section
  def mgs_prodrating_section
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodRating-section")), __method__)
	end
	
	# Returns the mgs_prodrating_label
  def mgs_prodrating_label
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodRating-section")).h3.span, __method__)
	end
	
	# Returns the mgs_prodrating_image
  def mgs_prodrating_image
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodRating-image")).img, __method__)
	end
	
	# Returns the mgs_prodrating_details
  def mgs_prodrating_details
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodRating-details")), __method__)
	end
	
	# Returns the mgs_prodrating_publisher
  def mgs_prodrating_publisher
		$tracer.trace(__method__)
		return ToolTag.new(div.className(create_ats_regex_string("ats-prodRating-publisher")), __method__)
	end
	
	########################################## Reco = 1
	
	# Returns the mgs_prodrecommendations_section
  def mgs_prodrecommendations_section 
		$tracer.trace(__method__)
		# return ToolTag.new(div.className(create_ats_regex_string("ats-prodRecommendations")), __method__)
		return MGSRecommendationsList.new(ToolTag.new(div.className(create_ats_regex_string("ats-prodRecommendations")), __method__), self)
	end

	
	
end