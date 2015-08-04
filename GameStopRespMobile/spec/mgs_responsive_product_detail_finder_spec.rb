ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_requires"

describe GameStopRespMobileProductDetailFinder do

	before(:all) do
		class GameStopRespMobileProductDetailFinderTest
				include GameStopRespMobileProductDetailFinder
		end
		@browser = GameStopRespMobileProductDetailFinderTest.allocate
	end

	after(:all) do
		Object.send(:remove_const, :GameStopRespMobileProductDetailFinderTest) if Object.const_defined?(:GameStopRespMobileProductDetailFinderTest)
	end

	it "should have mgs_prodzen_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_prodzen_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodZen-section").ordered.and_return("ats-prodZen-section")
    mocked_div.should_receive(:className).with("ats-prodZen-section").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_prodzen_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodzen_section.should == mocked_tooltag
  end

	it "should have mgs_prodzen_image" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_prodzen_image).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodZen-image").ordered.and_return("ats-prodZen-image")
    mocked_div.should_receive(:className).with("ats-prodZen-image").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_prodzen_image).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodzen_image.should == mocked_tooltag
  end

	it "should have mgs_prodzen_label" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_prodzen_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodZen-label").ordered.and_return("ats-prodZen-label")
    mocked_div.should_receive(:className).with("ats-prodZen-label").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_prodzen_label).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodzen_label.should == mocked_tooltag
  end

	it "should have mgs_prodzen_display_name" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_h1 = double("h1")

    $tracer.should_receive(:trace).with(:mgs_prodzen_display_name).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodZen-label").ordered.and_return("ats-prodZen-label")
    mocked_div.should_receive(:className).with("ats-prodZen-label").ordered.and_return(mocked_className)
		mocked_className.should_receive(:h1).ordered.and_return(mocked_h1)
    ToolTag.should_receive(:new).with(mocked_h1, :mgs_prodzen_display_name).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodzen_display_name.should == mocked_tooltag
  end
	
	it "should have mgs_prodzen_platform" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_h4 = double("h4")

    $tracer.should_receive(:trace).with(:mgs_prodzen_platform).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodZen-label").ordered.and_return("ats-prodZen-label")
    mocked_div.should_receive(:className).with("ats-prodZen-label").ordered.and_return(mocked_className)
    mocked_className.should_receive(:h4).ordered.and_return(mocked_h4)
		ToolTag.should_receive(:new).with(mocked_h4, :mgs_prodzen_platform).ordered.and_return(mocked_tooltag)
		
    @browser.mgs_prodzen_platform.should == mocked_tooltag
  end
		
	it "should have mgs_prodzen_release_date" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_prodzen_release_date).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodZen-releaseDate").ordered.and_return("ats-prodZen-releaseDate")
    mocked_div.should_receive(:className).with("ats-prodZen-releaseDate").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_prodzen_release_date).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodzen_release_date.should == mocked_tooltag
  end
	
	it "should have mgs_prodzen_rating" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_prodzen_rating).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodZen-rating").ordered.and_return("ats-prodZen-rating")
    mocked_div.should_receive(:className).with("ats-prodZen-rating").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_prodzen_rating).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodzen_rating.should == mocked_tooltag
  end

	#----------------------------------------------------------------------------------------------------------
	it "should have mgs_product_purchaseopt_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_product_purchaseopt_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodPurchaseOpt-section").ordered.and_return("ats-prodPurchaseOpt-section")
    mocked_div.should_receive(:className).with("ats-prodPurchaseOpt-section").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_product_purchaseopt_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_product_purchaseopt_section.should == mocked_tooltag
  end
	
	it "should have mgs_shipopt_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shipopt_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-shipOpt-section").ordered.and_return("ats-shipOpt-section")
    mocked_div.should_receive(:className).with("ats-shipOpt-section").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shipopt_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_shipopt_section.should == mocked_tooltag
  end
	
	it "should have mgs_shipopt_list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_ul = double("ul")
		mocked_li = double("li")

    $tracer.should_receive(:trace).with(:mgs_shipopt_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-shipOpt-section").ordered.and_return("ats-shipOpt-section")
    mocked_div.should_receive(:className).with("ats-shipOpt-section").ordered.and_return(mocked_className)
		mocked_className.should_receive(:ul).ordered.and_return(mocked_ul)
		mocked_ul.should_receive(:li).ordered.and_return(mocked_li)
    ToolTag.should_receive(:new).with(mocked_li, :mgs_shipopt_list).ordered.and_return(mocked_tooltag)

    @browser.mgs_shipopt_list.should == mocked_tooltag
  end
	
	it "should have mgs_shipopt_homestore_icon" do
    mocked_tooltag = double("ToolTag")
    mocked_i = double("i")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shipopt_homestore_icon).ordered

    @browser.should_receive(:i).ordered.and_return(mocked_i)
    @browser.should_receive(:create_ats_regex_string).with("ats-shipOpt-homestoreIcon").ordered.and_return("ats-shipOpt-homestoreIcon")
    mocked_i.should_receive(:className).with("ats-shipOpt-homestoreIcon").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shipopt_homestore_icon).ordered.and_return(mocked_tooltag)

    @browser.mgs_shipopt_homestore_icon.should == mocked_tooltag
  end
	
	it "should have mgs_shipopt_puas" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shipopt_puas).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-shipOpt-puas").ordered.and_return("ats-shipOpt-puas")
    mocked_span.should_receive(:className).with("ats-shipOpt-puas").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shipopt_puas).ordered.and_return(mocked_tooltag)

    @browser.mgs_shipopt_puas.should == mocked_tooltag
  end
	
	it "should have mgs_shipopt_availability_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shipopt_availability_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-shipOpt-availabilitySection").ordered.and_return("ats-shipOpt-availabilitySection")
    mocked_div.should_receive(:className).with("ats-shipOpt-availabilitySection").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shipopt_availability_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_shipopt_availability_section.should == mocked_tooltag
  end
	
	it "should have mgs_shipopt_new_icon" do
    mocked_tooltag = double("ToolTag")
    mocked_i = double("i")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shipopt_new_icon).ordered

    @browser.should_receive(:i).ordered.and_return(mocked_i)
    @browser.should_receive(:create_ats_regex_string).with("ats-shipOpt-newIcon").ordered.and_return("ats-shipOpt-newIcon")
    mocked_i.should_receive(:className).with("ats-shipOpt-newIcon").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shipopt_new_icon).ordered.and_return(mocked_tooltag)

    @browser.mgs_shipopt_new_icon.should == mocked_tooltag
  end
	
	it "should have mgs_shipopt_used_icon" do
    mocked_tooltag = double("ToolTag")
    mocked_i = double("i")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shipopt_used_icon).ordered

    @browser.should_receive(:i).ordered.and_return(mocked_i)
    @browser.should_receive(:create_ats_regex_string).with("ats-shipOpt-usedIcon").ordered.and_return("ats-shipOpt-usedIcon")
    mocked_i.should_receive(:className).with("ats-shipOpt-usedIcon").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shipopt_used_icon).ordered.and_return(mocked_tooltag)

    @browser.mgs_shipopt_used_icon.should == mocked_tooltag
  end	
	
	it "should have mgs_shipopt_other_availstore" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shipopt_other_availstore).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-shipOpt-otherStoreAvail").ordered.and_return("ats-shipOpt-otherStoreAvail")
    mocked_div.should_receive(:className).with("ats-shipOpt-otherStoreAvail").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shipopt_other_availstore).ordered.and_return(mocked_tooltag)

    @browser.mgs_shipopt_other_availstore.should == mocked_tooltag
  end

	it "should have mgs_shipopt_availstore" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shipopt_availstore).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-shipOpt-storeAvail").ordered.and_return("ats-shipOpt-storeAvail")
    mocked_div.should_receive(:className).with("ats-shipOpt-storeAvail").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shipopt_availstore).ordered.and_return(mocked_tooltag)

    @browser.mgs_shipopt_availstore.should == mocked_tooltag
  end	
	

	it "should have mgs_purchaseopt_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_purchaseopt_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-purchaseOpt-section").ordered.and_return("ats-purchaseOpt-section")
    mocked_div.should_receive(:className).with("ats-purchaseOpt-section").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_purchaseopt_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_purchaseopt_section.should == mocked_tooltag
  end	
	
	it "should have mgs_purchaseopt_list" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")
		mocked_li = double("li")

    $tracer.should_receive(:trace).with(:mgs_purchaseopt_list).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    @browser.should_receive(:create_ats_regex_string).with("ats-purchaseOpt-list").ordered.and_return("ats-purchaseOpt-list")
    mocked_ul.should_receive(:className).with("ats-purchaseOpt-list").ordered.and_return(mocked_className)
		mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    ToolTag.should_receive(:new).with(mocked_li, :mgs_purchaseopt_list).ordered.and_return(mocked_tooltag)

    @browser.mgs_purchaseopt_list.should == mocked_tooltag
  end	
	
	it "should have mgs_purchaseopt_label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_purchaseopt_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-purchaseOpt-label").ordered.and_return("ats-purchaseOpt-label")
    mocked_span.should_receive(:className).with("ats-purchaseOpt-label").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_purchaseopt_label).ordered.and_return(mocked_tooltag)

    @browser.mgs_purchaseopt_label.should == mocked_tooltag
  end	
	
	it "should have mgs_purchaseopt_condition" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_purchaseopt_condition).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-purchaseOpt-condition").ordered.and_return("ats-purchaseOpt-condition")
    mocked_span.should_receive(:className).with("ats-purchaseOpt-condition").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_purchaseopt_condition).ordered.and_return(mocked_tooltag)

    @browser.mgs_purchaseopt_condition.should == mocked_tooltag
  end	
	
	it "should have mgs_purchaseopt_onlineonly" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_purchaseopt_onlineonly).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-purchaseOpt-onlineOnly").ordered.and_return("ats-purchaseOpt-onlineOnly")
    mocked_span.should_receive(:className).with("ats-purchaseOpt-onlineOnly").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_purchaseopt_onlineonly).ordered.and_return(mocked_tooltag)

    @browser.mgs_purchaseopt_onlineonly.should == mocked_tooltag
  end
	
	it "should have mgs_purchaseopt_price" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_purchaseopt_price).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-purchaseOpt-price").ordered.and_return("ats-purchaseOpt-price")
    mocked_span.should_receive(:className).with("ats-purchaseOpt-price").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_purchaseopt_price).ordered.and_return(mocked_tooltag)

    @browser.mgs_purchaseopt_price.should == mocked_tooltag
  end			
	
	#----------------------------------------------------------------------------------------------------------
	it "should have mgs_tabs_content_slot" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_tabs_content_slot).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabs-contentSlot").ordered.and_return("ats-tabs-contentSlot")
    mocked_div.should_receive(:className).with("ats-tabs-contentSlot").ordered.and_return(mocked_className)
		mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    ToolTag.should_receive(:new).with(mocked_div, :mgs_tabs_content_slot).ordered.and_return(mocked_tooltag)

    @browser.mgs_tabs_content_slot.should == mocked_tooltag
  end	
	
	it "should have mgs_tab_details" do
		mocked_tooltag = double("ToolTag")
		mocked_div = double("div")
		mocked_id = double("id")

		$tracer.should_receive(:trace).with(:mgs_tab_details).ordered

		@browser.should_receive(:div).ordered.and_return(mocked_div)
		mocked_div.should_receive(:id).with("tab-Details").ordered.and_return(mocked_id)
		ToolTag.should_receive(:new).with(mocked_id, :mgs_tab_details).ordered.and_return(mocked_tooltag)

		@browser.mgs_tab_details.should == mocked_tooltag
	end
	
	it "should have mgs_tab_images" do
		mocked_tooltag = double("ToolTag")
		mocked_div = double("div")
		mocked_id = double("id")

		$tracer.should_receive(:trace).with(:mgs_tab_images).ordered

		@browser.should_receive(:div).ordered.and_return(mocked_div)
		mocked_div.should_receive(:id).with("tab-Images").ordered.and_return(mocked_id)
		ToolTag.should_receive(:new).with(mocked_id, :mgs_tab_images).ordered.and_return(mocked_tooltag)

		@browser.mgs_tab_images.should == mocked_tooltag
	end	
	
	it "should have mgs_tab_videos" do
		mocked_tooltag = double("ToolTag")
		mocked_div = double("div")
		mocked_id = double("id")

		$tracer.should_receive(:trace).with(:mgs_tab_videos).ordered

		@browser.should_receive(:div).ordered.and_return(mocked_div)
		mocked_div.should_receive(:id).with("tab-Videos").ordered.and_return(mocked_id)
		ToolTag.should_receive(:new).with(mocked_id, :mgs_tab_videos).ordered.and_return(mocked_tooltag)

		@browser.mgs_tab_videos.should == mocked_tooltag
	end	
	
	#----------------------------------------------------------------------------------------------------------
	#Details / Images / Videos
	it "should have mgs_tab_details_text" do
		mocked_tooltag = double("ToolTag")
		mocked_div = double("div")
		mocked_id = double("id")

		$tracer.should_receive(:trace).with(:mgs_tab_details_text).ordered

		@browser.should_receive(:div).ordered.and_return(mocked_div)
		mocked_div.should_receive(:id).with("tab-Details").ordered.and_return(mocked_id)
		mocked_id.should_receive(:div).ordered.and_return(mocked_div)
		ToolTag.should_receive(:new).with(mocked_div, :mgs_tab_details_text).ordered.and_return(mocked_tooltag)

		@browser.mgs_tab_details_text.should == mocked_tooltag
	end	
	
	it "should have mgs_tab_details_more" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_tab_details_more).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabDetails-more").ordered.and_return("ats-tabDetails-more")
    mocked_a.should_receive(:className).with("ats-tabDetails-more").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_tab_details_more).ordered.and_return(mocked_tooltag)

    @browser.mgs_tab_details_more.should == mocked_tooltag
  end	
	
	it "should have mgs_tab_details_less" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_tab_details_less).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabDetails-less").ordered.and_return("ats-tabDetails-less")
    mocked_a.should_receive(:className).with("ats-tabDetails-less").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_tab_details_less).ordered.and_return(mocked_tooltag)

    @browser.mgs_tab_details_less.should == mocked_tooltag
  end	
	
	
	it "should have mgs_tab_images_list" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")
		mocked_li = double("li")

    $tracer.should_receive(:trace).with(:mgs_tab_images_list).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    @browser.should_receive(:create_ats_regex_string).with("ats-imagesList").ordered.and_return("ats-imagesList")
    mocked_ul.should_receive(:className).with("ats-imagesList").ordered.and_return(mocked_className)
		mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    ToolTag.should_receive(:new).with(mocked_li, :mgs_tab_images_list).ordered.and_return(mocked_tooltag)

    @browser.mgs_tab_images_list.should == mocked_tooltag
  end	
	
	it "should have mgs_modal_image_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_modal_image_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-modal-images").ordered.and_return("ats-modal-images")
    mocked_div.should_receive(:className).with("ats-modal-images").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_modal_image_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_modal_image_section.should == mocked_tooltag
  end	
	
	it "should have mgs_modal_image_close" do
    mocked_tooltag = double("ToolTag")
    mocked_button = double("button")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_modal_image_close).ordered

    @browser.should_receive(:button).ordered.and_return(mocked_button)
    @browser.should_receive(:create_ats_regex_string).with("ats-close-imageModal").ordered.and_return("ats-close-imageModal")
    mocked_button.should_receive(:className).with("ats-close-imageModal").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_modal_image_close).ordered.and_return(mocked_tooltag)

    @browser.mgs_modal_image_close.should == mocked_tooltag
  end	
	
	it "should have mgs_modal_image_featured" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_modal_image_featured).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-image-featured").ordered.and_return("ats-image-featured")
    mocked_div.should_receive(:className).with("ats-image-featured").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_modal_image_featured).ordered.and_return(mocked_tooltag)

    @browser.mgs_modal_image_featured.should == mocked_tooltag
  end
	
	it "should have mgs_modal_image_list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_modal_image_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-image-carousel").ordered.and_return("ats-image-carousel")
    mocked_div.should_receive(:className).with("ats-image-carousel").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_modal_image_list).ordered.and_return(mocked_tooltag)

    @browser.mgs_modal_image_list.should == mocked_tooltag
  end
		
		
	it "should have mgs_tab_videos_list" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")
		mocked_li = double("li")

    $tracer.should_receive(:trace).with(:mgs_tab_videos_list).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    @browser.should_receive(:create_ats_regex_string).with("ats-videosList").ordered.and_return("ats-videosList")
    mocked_ul.should_receive(:className).with("ats-videosList").ordered.and_return(mocked_className)
		mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    ToolTag.should_receive(:new).with(mocked_li, :mgs_tab_videos_list).ordered.and_return(mocked_tooltag)

    @browser.mgs_tab_videos_list.should == mocked_tooltag
  end	
	
	it "should have mgs_modal_video_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_modal_video_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-modal-videos").ordered.and_return("ats-modal-videos")
    mocked_div.should_receive(:className).with("ats-modal-videos").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_modal_video_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_modal_video_section.should == mocked_tooltag
  end	
	
	it "should have mgs_modal_video_close" do
    mocked_tooltag = double("ToolTag")
    mocked_button = double("button")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_modal_video_close).ordered

    @browser.should_receive(:button).ordered.and_return(mocked_button)
    @browser.should_receive(:create_ats_regex_string).with("ats-close-videoModal").ordered.and_return("ats-close-videoModal")
    mocked_button.should_receive(:className).with("ats-close-videoModal").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_modal_video_close).ordered.and_return(mocked_tooltag)

    @browser.mgs_modal_video_close.should == mocked_tooltag
  end	
	
	it "should have mgs_modal_video_list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_modal_video_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-video-carousel").ordered.and_return("ats-video-carousel")
    mocked_div.should_receive(:className).with("ats-video-carousel").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_modal_video_list).ordered.and_return(mocked_tooltag)

    @browser.mgs_modal_video_list.should == mocked_tooltag
  end
	
	it "should have mgs_modal_video_player" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_modal_video_player).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-video-player").ordered.and_return("ats-video-player")
    mocked_div.should_receive(:className).with("ats-video-player").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_modal_video_player).ordered.and_return(mocked_tooltag)

    @browser.mgs_modal_video_player.should == mocked_tooltag
  end
	
	#----------------------------------------------------------------------------------------------------------
	it "should have mgs_prodreviews_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_prodreviews_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodReviews-section").ordered.and_return("ats-prodReviews-section")
    mocked_div.should_receive(:className).with("ats-prodReviews-section").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_prodreviews_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodreviews_section.should == mocked_tooltag
  end	

	it "should have mgs_prodreviews_readall_link" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_a = double("a")

    $tracer.should_receive(:trace).with(:mgs_prodreviews_readall_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodReviews-section").ordered.and_return("ats-prodReviews-section")
    mocked_div.should_receive(:className).with("ats-prodReviews-section").ordered.and_return(mocked_className)
		mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :mgs_prodreviews_readall_link).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodreviews_readall_link.should == mocked_tooltag
  end	
	
	it "should have mgs_prodreviews_label" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_h3 = double("h3")

    $tracer.should_receive(:trace).with(:mgs_prodreviews_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodReviews-section").ordered.and_return("ats-prodReviews-section")
    mocked_div.should_receive(:className).with("ats-prodReviews-section").ordered.and_return(mocked_className)
		mocked_className.should_receive(:h3).ordered.and_return(mocked_h3)
    ToolTag.should_receive(:new).with(mocked_h3, :mgs_prodreviews_label).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodreviews_label.should == mocked_tooltag
  end	
	
	it "should have mgs_prodreviews_list" do
		mocked_tooltag = double("ToolTag")
		mocked_div = double("div")
		mocked_className = double("className")
		mocked_ul = double("ul")
		mocked_li = double("li")
		mocked_mgsreviewlist = double("MGSReviewList")

		$tracer.should_receive(:trace).with(:mgs_prodreviews_list).ordered

		@browser.should_receive(:div).ordered.and_return(mocked_div)
		@browser.should_receive(:create_ats_regex_string).with("ats-prodReviews-section").ordered.and_return("ats-prodReviews-section")
		mocked_div.should_receive(:className).with("ats-prodReviews-section").ordered.and_return(mocked_className)
		mocked_className.should_receive(:ul).ordered.and_return(mocked_ul)
		mocked_ul.should_receive(:li).ordered.and_return(mocked_li)
		ToolTag.should_receive(:new).with(mocked_li, :mgs_prodreviews_list).ordered.and_return(mocked_tooltag)
		MGSReviewList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_mgsreviewlist)

		@browser.mgs_prodreviews_list.should == mocked_mgsreviewlist
	end
	
	#----------------------------------------------------------------------------------------------------------
	it "should have mgs_prodrating_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_prodrating_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodRating-section").ordered.and_return("ats-prodRating-section")
    mocked_div.should_receive(:className).with("ats-prodRating-section").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_prodrating_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodrating_section.should == mocked_tooltag
  end	
	
	it "should have mgs_prodrating_label" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_h3 = double("h3")
		mocked_span = double("span")

    $tracer.should_receive(:trace).with(:mgs_prodrating_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodRating-section").ordered.and_return("ats-prodRating-section")
    mocked_div.should_receive(:className).with("ats-prodRating-section").ordered.and_return(mocked_className)
		mocked_className.should_receive(:h3).ordered.and_return(mocked_h3)
		mocked_h3.should_receive(:span).ordered.and_return(mocked_span)
    ToolTag.should_receive(:new).with(mocked_span, :mgs_prodrating_label).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodrating_label.should == mocked_tooltag
  end	
	
	it "should have mgs_prodrating_image" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_img = double("img")

    $tracer.should_receive(:trace).with(:mgs_prodrating_image).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodRating-image").ordered.and_return("ats-prodRating-image")
    mocked_div.should_receive(:className).with("ats-prodRating-image").ordered.and_return(mocked_className)
		mocked_className.should_receive(:img).ordered.and_return(mocked_img)
    ToolTag.should_receive(:new).with(mocked_img, :mgs_prodrating_image).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodrating_image.should == mocked_tooltag
  end	
	
	it "should have mgs_prodrating_details" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_prodrating_details).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodRating-details").ordered.and_return("ats-prodRating-details")
    mocked_div.should_receive(:className).with("ats-prodRating-details").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_prodrating_details).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodrating_details.should == mocked_tooltag
  end	
	
	it "should have mgs_prodrating_publisher" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_prodrating_publisher).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-prodRating-publisher").ordered.and_return("ats-prodRating-publisher")
    mocked_div.should_receive(:className).with("ats-prodRating-publisher").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_prodrating_publisher).ordered.and_return(mocked_tooltag)

    @browser.mgs_prodrating_publisher.should == mocked_tooltag
  end	
	
	#----------------------------------------------------------------------------------------------------------
	it "should have mgs_prodrecommendations_section" do
		mocked_tooltag = double("ToolTag")
		mocked_div = double("div")
		mocked_className = double("className")
		mocked_mgsrecommendationslist = double("MGSRecommendationsList")

		$tracer.should_receive(:trace).with(:mgs_prodrecommendations_section).ordered

		@browser.should_receive(:div).ordered.and_return(mocked_div)
		@browser.should_receive(:create_ats_regex_string).with("ats-prodRecommendations").ordered.and_return("ats-prodRecommendations")
		mocked_div.should_receive(:className).with("ats-prodRecommendations").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_prodrecommendations_section).ordered.and_return(mocked_tooltag)
		MGSRecommendationsList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_mgsrecommendationslist)

		@browser.mgs_prodrecommendations_section.should == mocked_mgsrecommendationslist
	end
	
end

