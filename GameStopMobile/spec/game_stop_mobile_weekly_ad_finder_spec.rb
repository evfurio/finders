ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


describe GameStopMobileWeeklyAdFinder do
    before(:all) do
        class GameStopMobileWeeklyAdFinderTest
            include GameStopMobileWeeklyAdFinder
        end

        @browser = GameStopMobileWeeklyAdFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileWeeklyAdFinderTest) if Object.const_defined?(:GameStopMobileWeeklyAdFinderTest)
    end

    it "should have a weekly_ad_link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:weekly_ad_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-nav_weekly_ad_link").ordered.and_return("ats-nav_weekly_ad_link")
      mocked_a.should_receive(:className).with("ats-nav_weekly_ad_link").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :weekly_ad_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.weekly_ad_link.should == mocked_tooltag

    end

    it "should have a weekly_ad_container" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:weekly_ad_container).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ad_container").ordered.and_return("ad_container")
      mocked_div.should_receive(:className).with("ad_container").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :weekly_ad_container, @browser).ordered.and_return(mocked_tooltag)

      @browser.weekly_ad_container.should == mocked_tooltag

    end
end
