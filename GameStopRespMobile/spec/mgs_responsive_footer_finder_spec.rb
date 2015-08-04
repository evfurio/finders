ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_requires"

describe GameStopRespMobileFooterFinder do

	before(:all) do
		class GameStopRespMobileFooterFinderTest
			include GameStopRespMobileFooterFinder
		end
		@browser = GameStopRespMobileFooterFinderTest.allocate
	end

	after(:all) do
		Object.send(:remove_const, :GameStopRespMobileFooterFinderTest) if Object.const_defined?(:GameStopRespMobileFooterFinderTest)
	end

	it "should have mgs_footer_section" do
    mocked_tooltag = double("ToolTag")
    mocked_section = double("section")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_footer_section).ordered

    @browser.should_receive(:section).ordered.and_return(mocked_section)
    @browser.should_receive(:create_ats_regex_string).with("ats-footer-section").ordered.and_return("ats-footer-section")
    mocked_section.should_receive(:className).with("ats-footer-section").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_footer_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_footer_section.should == mocked_tooltag
  end

	it "should have mgs_footer_lnklist" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")
    mocked_li = double("li")

    $tracer.should_receive(:trace).with(:mgs_footer_lnklist).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    @browser.should_receive(:create_ats_regex_string).with("ats-footerList-links").ordered.and_return("ats-footerList-links")
    mocked_ul.should_receive(:className).with("ats-footerList-links").ordered.and_return(mocked_className)
    mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    ToolTag.should_receive(:new).with(mocked_li, :mgs_footer_lnklist).ordered.and_return(mocked_tooltag)

    @browser.mgs_footer_lnklist.should == mocked_tooltag
  end

  it "should have mgs_footer_otherlist" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")
    mocked_li = double("li")

    $tracer.should_receive(:trace).with(:mgs_footer_otherlist).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    @browser.should_receive(:create_ats_regex_string).with("ats-footerList-others").ordered.and_return("ats-footerList-others")
    mocked_ul.should_receive(:className).with("ats-footerList-others").ordered.and_return(mocked_className)
    mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    ToolTag.should_receive(:new).with(mocked_li, :mgs_footer_otherlist).ordered.and_return(mocked_tooltag)

    @browser.mgs_footer_otherlist.should == mocked_tooltag
  end

	it "should have mgs_ftr_fullsite_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_ftr_fullsite_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-ftr-fullSite").ordered.and_return("ats-ftr-fullSite")
    mocked_a.should_receive(:className).with("ats-ftr-fullSite").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_ftr_fullsite_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_ftr_fullsite_lnk.should == mocked_tooltag
  end

  it "should have mgs_ftr_about_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_ftr_about_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-ftr-about").ordered.and_return("ats-ftr-about")
    mocked_a.should_receive(:className).with("ats-ftr-about").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_ftr_about_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_ftr_about_lnk.should == mocked_tooltag
  end

  it "should have mgs_ftr_privpolicy_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_ftr_privpolicy_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-ftr-privacyPolicy").ordered.and_return("ats-ftr-privacyPolicy")
    mocked_a.should_receive(:className).with("ats-ftr-privacyPolicy").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_ftr_privpolicy_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_ftr_privpolicy_lnk.should == mocked_tooltag
  end

  it "should have mgs_ftr_feedback_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_ftr_feedback_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-ftr-feedback").ordered.and_return("ats-ftr-feedback")
    mocked_a.should_receive(:className).with("ats-ftr-feedback").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_ftr_feedback_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_ftr_feedback_lnk.should == mocked_tooltag
  end

  it "should have mgs_ftr_condition_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_ftr_condition_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-ftr-conditionsOfUSe").ordered.and_return("ats-ftr-conditionsOfUSe")
    mocked_a.should_receive(:className).with("ats-ftr-conditionsOfUSe").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_ftr_condition_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_ftr_condition_lnk.should == mocked_tooltag
  end

  it "should have mgs_ftr_contact_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_ftr_contact_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-ftr-contact").ordered.and_return("ats-ftr-contact")
    mocked_a.should_receive(:className).with("ats-ftr-contact").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_ftr_contact_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_ftr_contact_lnk.should == mocked_tooltag
  end

end

