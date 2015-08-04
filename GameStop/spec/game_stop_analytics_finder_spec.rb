ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"

describe GameStopAnalyticsFinder, "finders" do

	before(:all) do
		class GameStopAnalyticsFinderTest
			include GameStopAnalyticsFinder
		end
		@browser = GameStopAnalyticsFinderTest.allocate
	end

	after(:all) do
		Object.send(:remove_const, :GameStopAnalyticsFinderTest) if Object.const_defined?(:GameStopAnalyticsFinderTest)
	end

		it "should have optimizely_script" do
        mocked_tooltag = double("ToolTag")
        mocked_script = double("script")
        mocked_src = double("src")

        $tracer.should_receive(:trace).with(:optimizely_script).ordered
        @browser.should_receive(:script).ordered.and_return(mocked_script)
        mocked_script.should_receive(:src).with("//cdn.optimizely.com/js/286376465.js").ordered.and_return(mocked_src)
        ToolTag.should_receive(:new).with(mocked_src, :optimizely_script).ordered.and_return(mocked_tooltag)
				@browser.optimizely_script.should == mocked_tooltag
    end
 
		it "should have optimizely_adroll_function" do
        mocked_script = double("script")
				mocked_innerText = double("innerText")
				
				$tracer.should_receive(:trace).with(:optimizely_adroll_function).ordered
        @browser.should_receive(:script).with(no_args).ordered.and_return(mocked_script)
        mocked_script.should_receive(:innerText).with("/ef_event_type/").ordered.and_return(mocked_innerText)
        mocked_innerText.should_receive(:innerText).with(no_args).ordered.and_return("ef_event_type")
        @browser.optimizely_adroll_function.should include "ef_event_type"
    end
		
		it "should have adroll_script" do
        mocked_script = double("script")
				mocked_innerText = double("innerText")
				
				$tracer.should_receive(:trace).with(:adroll_script).ordered
        @browser.should_receive(:script).with(no_args).ordered.and_return(mocked_script)
        mocked_script.should_receive(:innerText).with("/adroll_adv_id = \"HGAM45IRB5GXVJPUZ3AIJV\";/").ordered.and_return(mocked_innerText)
        mocked_innerText.should_receive(:innerText).with(no_args).ordered.and_return("adroll_adv_id = \"HGAM45IRB5GXVJPUZ3AIJV\";")
        @browser.adroll_script.should include "adroll_adv_id = \"HGAM45IRB5GXVJPUZ3AIJV\";"
    end
		
		it "should have channel_intelligence_script" do
        mocked_tooltag = double("ToolTag")
        mocked_script = double("script")
        mocked_src = double("src")

        $tracer.should_receive(:trace).with(:channel_intelligence_script).ordered
        @browser.should_receive(:script).ordered.and_return(mocked_script)
        mocked_script.should_receive(:src).with("https://cts-secure.channelintelligence.com/11163_confirmation.js").ordered.and_return(mocked_src)
        ToolTag.should_receive(:new).with(mocked_src, :channel_intelligence_script).ordered.and_return(mocked_tooltag)
        @browser.channel_intelligence_script.should == mocked_tooltag
    end
		
		it "should have google_analytics_script" do
        mocked_tooltag = double("ToolTag")
        mocked_script = double("script")
        mocked_src = double("src")

        $tracer.should_receive(:trace).with(:google_analytics_script).ordered
        @browser.should_receive(:script).ordered.and_return(mocked_script)
        mocked_script.should_receive(:src).with("/.google-analytics.com/ga.js").ordered.and_return(mocked_src)
        ToolTag.should_receive(:new).with(mocked_src, :google_analytics_script).ordered.and_return(mocked_tooltag)
        @browser.google_analytics_script.should == mocked_tooltag
    end
end
