ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_requires"

describe GameStopRespMobileBrowseFinder do

	before(:all) do
		class GameStopRespMobileBrowseFinderTest
				include GameStopRespMobileBrowseFinder
		end
		@browser = GameStopRespMobileBrowseFinderTest.allocate
	end

	after(:all) do
		Object.send(:remove_const, :GameStopRespMobileBrowseFinderTest) if Object.const_defined?(:GameStopRespMobileBrowseFinderTest)
	end

	it "should have mgs_search_left_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_search_left_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-leftSection").ordered.and_return("ats-searchMob-leftSection")
    mocked_div.should_receive(:className).with("ats-searchMob-leftSection").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_search_left_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_left_section.should == mocked_tooltag
  end

	it "should have mgs_search_breadcrumb_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_search_breadcrumb_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-breadcrumb").ordered.and_return("ats-searchMob-breadcrumb")
    mocked_div.should_receive(:className).with("ats-searchMob-breadcrumb").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_search_breadcrumb_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_breadcrumb_section.should == mocked_tooltag
  end
	
	it "should have mgs_search_breadcrumb_header" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_search_breadcrumb_header).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-brdcrmbHdr").ordered.and_return("ats-searchMob-brdcrmbHdr")
    mocked_div.should_receive(:className).with("ats-searchMob-brdcrmbHdr").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_search_breadcrumb_header).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_breadcrumb_header.should == mocked_tooltag
  end
	
	it "should have mgs_search_breadcrumb_list" do
		mocked_tooltag = double("ToolTag")
		mocked_ul = double("ul")
		mocked_className = double("className")
		mocked_li = double("li")
		mocked_mgsbrdcrmblist = double("MGSSearchBreadcrumbList")

		$tracer.should_receive(:trace).with(:mgs_search_breadcrumb_list).ordered

		@browser.should_receive(:ul).ordered.and_return(mocked_ul)
		@browser.should_receive(:create_ats_regex_string).with("ats-searchMob-brdcrmbList").ordered.and_return("ats-searchMob-brdcrmbList")
		mocked_ul.should_receive(:className).with("ats-searchMob-brdcrmbList").ordered.and_return(mocked_className)
		mocked_className.should_receive(:li).ordered.and_return(mocked_li)
		ToolTag.should_receive(:new).with(mocked_li, :mgs_search_breadcrumb_list).ordered.and_return(mocked_tooltag)
		MGSSearchBreadcrumbList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_mgsbrdcrmblist)

		@browser.mgs_search_breadcrumb_list.should == mocked_mgsbrdcrmblist
	end
		
	it "should have mgs_search_filter_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_search_filter_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-filterSection").ordered.and_return("ats-searchMob-filterSection")
    mocked_div.should_receive(:className).with("ats-searchMob-filterSection").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_search_filter_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_filter_section.should == mocked_tooltag
  end
	
	it "should have mgs_search_filter_list" do
		mocked_tooltag = double("ToolTag")
		mocked_div = double("div")
		mocked_className = double("className")
		mocked_mgsfilterlist = double("MGSSearchFilterList")

		$tracer.should_receive(:trace).with(:mgs_search_filter_list).ordered

		@browser.should_receive(:div).ordered.and_return(mocked_div)
		@browser.should_receive(:create_ats_regex_string).with("ats-searchMob-filterList").ordered.and_return("ats-searchMob-filterList")
		mocked_div.should_receive(:className).with("ats-searchMob-filterList").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_search_filter_list).ordered.and_return(mocked_tooltag)
		MGSSearchFilterList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_mgsfilterlist)

		@browser.mgs_search_filter_list.should == mocked_mgsfilterlist
	end
	
	#---------------------------
	it "should have mgs_search_main_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_search_main_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-mainSection").ordered.and_return("ats-searchMob-mainSection")
    mocked_div.should_receive(:className).with("ats-searchMob-mainSection").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_search_main_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_main_section.should == mocked_tooltag
  end
	
	it "should have mgs_search_filter_btn" do
		mocked_tooltag = double("ToolTag")
		mocked_btn = double("button")
		mocked_className = double("className")

		$tracer.should_receive(:trace).with(:mgs_search_filter_btn).ordered

		@browser.should_receive(:button).ordered.and_return(mocked_btn)
		@browser.should_receive(:create_ats_regex_string).with("ats-searchMob-filterBtn").ordered.and_return("ats-searchMob-filterBtn")
		mocked_btn.should_receive(:className).with("ats-searchMob-filterBtn").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_search_filter_btn).ordered.and_return(mocked_tooltag)

		@browser.mgs_search_filter_btn.should == mocked_tooltag
	end

	it "should have mgs_search_result_hdr" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_h3 = double("h3")

    $tracer.should_receive(:trace).with(:mgs_search_result_hdr).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-mainSection").ordered.and_return("ats-searchMob-mainSection")
    mocked_div.should_receive(:className).with("ats-searchMob-mainSection").ordered.and_return(mocked_className)
		mocked_className.should_receive(:h3).ordered.and_return(mocked_h3)
    ToolTag.should_receive(:new).with(mocked_h3, :mgs_search_result_hdr).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_result_hdr.should == mocked_tooltag
  end

	it "should have mgs_search_sort_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_search_sort_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-sortingSection").ordered.and_return("ats-searchMob-sortingSection")
    mocked_div.should_receive(:className).with("ats-searchMob-sortingSection").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_search_sort_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_sort_section.should == mocked_tooltag
  end

	it "should have mgs_search_sort_list" do
		mocked_tooltag = double("ToolTag")
		mocked_ul = double("ul")
		mocked_className = double("className")
		mocked_li = double("li")
		mocked_mgssortinglist = double("MGSSearchSortingList")

		$tracer.should_receive(:trace).with(:mgs_search_sort_list).ordered

		@browser.should_receive(:ul).ordered.and_return(mocked_ul)
		@browser.should_receive(:create_ats_regex_string).with("ats-searchMob-sortingList").ordered.and_return("ats-searchMob-sortingList")
		mocked_ul.should_receive(:className).with("ats-searchMob-sortingList").ordered.and_return(mocked_className)
		mocked_className.should_receive(:li).ordered.and_return(mocked_li)
		ToolTag.should_receive(:new).with(mocked_li, :mgs_search_sort_list).ordered.and_return(mocked_tooltag)
		MGSSearchSortingList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_mgssortinglist)

		@browser.mgs_search_sort_list.should == mocked_mgssortinglist
	end

	it "should have mgs_search_record_section" do
    mocked_tooltag = double("ToolTag")
    mocked_nav = double("nav")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_search_record_section).ordered

    @browser.should_receive(:nav).ordered.and_return(mocked_nav)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-recordsSection").ordered.and_return("ats-searchMob-recordsSection")
    mocked_nav.should_receive(:className).with("ats-searchMob-recordsSection").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_search_record_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_record_section.should == mocked_tooltag
  end

	it "should have mgs_search_record_lbl" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_strong = double("strong")

    $tracer.should_receive(:trace).with(:mgs_search_record_lbl).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-showRecords").ordered.and_return("ats-searchMob-showRecords")
    mocked_div.should_receive(:className).with("ats-searchMob-showRecords").ordered.and_return(mocked_className)
		mocked_className.should_receive(:strong).ordered.and_return(mocked_strong)
		ToolTag.should_receive(:new).with(mocked_strong, :mgs_search_record_lbl).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_record_lbl.should == mocked_tooltag
  end

	it "should have mgs_search_prodlist_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_search_prodlist_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-prodResultsSection").ordered.and_return("ats-searchMob-prodResultsSection")
    mocked_div.should_receive(:className).with("ats-searchMob-prodResultsSection").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_search_prodlist_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_prodlist_section.should == mocked_tooltag
  end
	
	it "should have mgs_search_product_list" do
		mocked_tooltag = double("ToolTag")
		mocked_div = double("div")
		mocked_className = double("className")
		mocked_mgsprodlist = double("MGSSearchProductList")

		$tracer.should_receive(:trace).with(:mgs_search_product_list).ordered

		@browser.should_receive(:div).ordered.and_return(mocked_div)
		@browser.should_receive(:create_ats_regex_string).with("ats-searchMob-prodList").ordered.and_return("ats-searchMob-prodList")
		mocked_div.should_receive(:className).with("ats-searchMob-prodList").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_search_product_list).ordered.and_return(mocked_tooltag)
		MGSSearchProductList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_mgsprodlist)

		@browser.mgs_search_product_list.should == mocked_mgsprodlist
	end	
	
	it "should have mgs_search_load_more" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_search_load_more).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-searchMob-loadMore").ordered.and_return("ats-searchMob-loadMore")
    mocked_div.should_receive(:className).with("ats-searchMob-loadMore").ordered.and_return(mocked_className)
		ToolTag.should_receive(:new).with(mocked_className, :mgs_search_load_more).ordered.and_return(mocked_tooltag)

    @browser.mgs_search_load_more.should == mocked_tooltag
  end	
	
end

