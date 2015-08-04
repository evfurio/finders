ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


describe GameStopMobileFeedbackFinder do
    before(:all) do
        class GameStopMobileFeedbackFinderTest
            include GameStopMobileFeedbackFinder
        end

        @browser = GameStopMobileFeedbackFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileFeedbackFinderTest) if Object.const_defined?(:GameStopMobileFeedbackFinderTest)
    end

    it "should have a mgs_weekly_ad_link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:mgs_weekly_ad_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-nav_weekly_ad_link").ordered.and_return("ats-nav_weekly_ad_link")
        mocked_a.should_receive(:className).with("ats-nav_weekly_ad_link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :mgs_weekly_ad_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.mgs_weekly_ad_link.should == mocked_tooltag
    end

		it "should have a mgs_feedback_link" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")
        $tracer.should_receive(:trace).with(:mgs_feedback_link).ordered
        @browser.should_receive(:jquery).with("a[href='#']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :mgs_feedback_link).ordered.and_return(mocked_tooltag)
        @browser.mgs_feedback_link.should == mocked_tooltag
    end
				
		it "should have a mgs_qualtrics_script" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_script = double("script")

        $tracer.should_receive(:trace).with(:mgs_qualtrics_script).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("qualtrics").ordered.and_return(mocked_id)
        mocked_id.should_receive(:script).ordered.and_return(mocked_script)
        ToolTag.should_receive(:new).with(mocked_script, :mgs_qualtrics_script, @browser).ordered.and_return(mocked_tooltag)

        @browser.mgs_qualtrics_script.should == mocked_tooltag
    end
		
		it "should have a mgs_feedback_modal" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:mgs_feedback_modal).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("/QSIPopOver/").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :mgs_feedback_modal, @browser).ordered.and_return(mocked_tooltag)

        @browser.mgs_feedback_modal.should == mocked_tooltag
    end
		
end
