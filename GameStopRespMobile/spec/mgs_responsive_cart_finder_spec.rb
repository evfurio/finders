ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_requires"

describe GameStopRespMobileCartFinder do

	before(:all) do
		class GameStopRespMobileCartFinderTest
			include GameStopRespMobileCartFinder
		end
		@browser = GameStopRespMobileCartFinderTest.allocate
	end

	after(:all) do
		Object.send(:remove_const, :GameStopRespMobileCartFinderTest) if Object.const_defined?(:GameStopRespMobileCartFinderTest)
	end

	it "should have mgs_cart_modal" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal").ordered.and_return("ats-cartModal")
    mocked_div.should_receive(:className).with("ats-cartModal").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal.should == mocked_tooltag
  end

	it "should have mgs_cart_modal_prod_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		
    $tracer.should_receive(:trace).with(:mgs_cart_modal_prod_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-productSection").ordered.and_return("ats-cartModal-productSection")
    mocked_div.should_receive(:className).with("ats-cartModal-productSection").ordered.and_return(mocked_className)

    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_prod_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_prod_section.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_prod_img" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_img = double("img")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_prod_img).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-prodImg").ordered.and_return("ats-cartModal-prodImg")
    mocked_div.should_receive(:className).with("ats-cartModal-prodImg").ordered.and_return(mocked_className)
		mocked_className.should_receive(:img).ordered.and_return(mocked_img)
    ToolTag.should_receive(:new).with(mocked_img, :mgs_cart_modal_prod_img).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_prod_img.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_prod_details" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_prod_details).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-prodDetails").ordered.and_return("ats-cartModal-prodDetails")
    mocked_div.should_receive(:className).with("ats-cartModal-prodDetails").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_prod_details).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_prod_details.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_prod_hdr" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_prod_hdr).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-addToCartLbl").ordered.and_return("ats-cartModal-addToCartLbl")
    mocked_div.should_receive(:className).with("ats-cartModal-addToCartLbl").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_prod_hdr).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_prod_hdr.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_prod_name_cond" do
    mocked_tooltag = double("ToolTag")
    mocked_h1 = double("h1")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_prod_name_cond).ordered

    @browser.should_receive(:h1).ordered.and_return(mocked_h1)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-prodNameCond").ordered.and_return("ats-cartModal-prodNameCond")
    mocked_h1.should_receive(:className).with("ats-cartModal-prodNameCond").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_prod_name_cond).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_prod_name_cond.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_prod_platform" do
    mocked_tooltag = double("ToolTag")
    mocked_h4 = double("h4")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_prod_platform).ordered

    @browser.should_receive(:h4).ordered.and_return(mocked_h4)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-prodPlatform").ordered.and_return("ats-cartModal-prodPlatform")
    mocked_h4.should_receive(:className).with("ats-cartModal-prodPlatform").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_prod_platform).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_prod_platform.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_prod_price" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_prod_price).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-prodPrice").ordered.and_return("ats-cartModal-prodPrice")
    mocked_div.should_receive(:className).with("ats-cartModal-prodPrice").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_prod_price).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_prod_price.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_actions_section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_actions_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-actions").ordered.and_return("ats-cartModal-actions")
    mocked_div.should_receive(:className).with("ats-cartModal-actions").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_actions_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_actions_section.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_chkout_btn" do
    mocked_tooltag = double("ToolTag")
    mocked_button = double("button")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_chkout_btn).ordered

    @browser.should_receive(:button).ordered.and_return(mocked_button)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-chkoutBtn").ordered.and_return("ats-cartModal-chkoutBtn")
    mocked_button.should_receive(:className).with("ats-cartModal-chkoutBtn").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_chkout_btn).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_chkout_btn.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_continue_shopping" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_continue_shopping).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-contShop").ordered.and_return("ats-cartModal-contShop")
    mocked_div.should_receive(:className).with("ats-cartModal-contShop").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_continue_shopping).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_continue_shopping.should == mocked_tooltag
  end
	
	it "should have mgs_cart_modal_prod_terms" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_cart_modal_prod_terms).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartModal-terms").ordered.and_return("ats-cartModal-terms")
    mocked_div.should_receive(:className).with("ats-cartModal-terms").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_cart_modal_prod_terms).ordered.and_return(mocked_tooltag)

    @browser.mgs_cart_modal_prod_terms.should == mocked_tooltag
  end
	
		
	
end

