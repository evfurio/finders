ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


describe GameStopMobileHTMLFinder do
    before(:all) do
        class GameStopMobileHTMLFinderTest
            include GameStopMobileHTMLFinder
        end

        @browser = GameStopMobileHTMLFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileHTMLFinderTest) if Object.const_defined?(:GameStopMobileHTMLFinderTest)
    end

    it "should have a wait for landing page load method" do
        @browser.wait_for_landing_page_load.should be_nil
        @browser.wait_for_landing_page_load(1000).should be_nil
    end

    it "should have a fullsite_link" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")
      $tracer.should_receive(:trace).with(:fullsite_link).ordered
      @browser.should_receive(:jquery).with("a[href='/Home/FullSite']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :fullsite_link).ordered.and_return(mocked_tooltag)
      @browser.fullsite_link.should == mocked_tooltag
    end

    it "should have a privacy_policy_link" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")
      $tracer.should_receive(:trace).with(:privacy_policy_link).ordered
      @browser.should_receive(:jquery).with("a[href='/Home/PrivacyPolicy']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :privacy_policy_link).ordered.and_return(mocked_tooltag)
      @browser.privacy_policy_link.should == mocked_tooltag
    end

    it "should have a condition_of_use_link" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")
      $tracer.should_receive(:trace).with(:condition_of_use_link).ordered
      @browser.should_receive(:jquery).with("a[href='/Home/ConditionsofUse']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :condition_of_use_link).ordered.and_return(mocked_tooltag)
      @browser.condition_of_use_link.should == mocked_tooltag
    end

end
