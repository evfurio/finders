ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_requires"

describe GameStopRespMobileErrorFinder do

	before(:all) do
		class GameStopRespMobileErrorFinderTest
			include GameStopRespMobileErrorFinder
		end
		@browser = GameStopRespMobileErrorFinderTest.allocate
	end

	after(:all) do
		Object.send(:remove_const, :GameStopRespMobileErrorFinderTest) if Object.const_defined?(:GameStopRespMobileErrorFinderTest)
	end

	it "should have mgs_error_modal" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_error_modal).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-errorModal").ordered.and_return("ats-errorModal")
    mocked_div.should_receive(:className).with("ats-errorModal").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_error_modal).ordered.and_return(mocked_tooltag)

    @browser.mgs_error_modal.should == mocked_tooltag
  end

	it "should have mgs_error_modal_content" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_error_modal_content).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-errorContent").ordered.and_return("ats-errorContent")
    mocked_div.should_receive(:className).with("ats-errorContent").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_error_modal_content).ordered.and_return(mocked_tooltag)

    @browser.mgs_error_modal_content.should == mocked_tooltag
  end
	
	it "should have mgs_error_modal_close_btn" do
    mocked_tooltag = double("ToolTag")
    mocked_button = double("button")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_error_modal_close_btn).ordered

    @browser.should_receive(:button).ordered.and_return(mocked_button)
    @browser.should_receive(:create_ats_regex_string).with("ats-errorExitBtn").ordered.and_return("ats-errorExitBtn")
    mocked_button.should_receive(:className).with("ats-errorExitBtn").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_error_modal_close_btn).ordered.and_return(mocked_tooltag)

    @browser.mgs_error_modal_close_btn.should == mocked_tooltag
  end
	
	it "should have mgs_error_modal_icon" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_i = double("i")
		
    $tracer.should_receive(:trace).with(:mgs_error_modal_icon).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-errorMsg").ordered.and_return("ats-errorMsg")
    mocked_div.should_receive(:className).with("ats-errorMsg").ordered.and_return(mocked_className)
		mocked_className.should_receive(:i).ordered.and_return(mocked_i)
    ToolTag.should_receive(:new).with(mocked_i, :mgs_error_modal_icon).ordered.and_return(mocked_tooltag)

    @browser.mgs_error_modal_icon.should == mocked_tooltag
  end
	
	it "should have mgs_error_modal_message" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
		mocked_p = double("p")
		
    $tracer.should_receive(:trace).with(:mgs_error_modal_message).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-errorMsg").ordered.and_return("ats-errorMsg")
    mocked_div.should_receive(:className).with("ats-errorMsg").ordered.and_return(mocked_className)
		mocked_className.should_receive(:p).ordered.and_return(mocked_p)
    ToolTag.should_receive(:new).with(mocked_p, :mgs_error_modal_message).ordered.and_return(mocked_tooltag)

    @browser.mgs_error_modal_message.should == mocked_tooltag
  end
	
	it "should have mgs_error_modal_bkg" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_error_modal_bkg).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-errorBkg").ordered.and_return("ats-errorBkg")
    mocked_div.should_receive(:className).with("ats-errorBkg").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_error_modal_bkg).ordered.and_return(mocked_tooltag)

    @browser.mgs_error_modal_bkg.should == mocked_tooltag
  end
	
end

