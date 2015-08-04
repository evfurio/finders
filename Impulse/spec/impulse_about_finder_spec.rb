ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseAboutFinder do

    before(:all) do
        class ImpulseAboutFinderTest
            include ImpulseAboutFinder
        end

        @browser = ImpulseAboutFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseAboutFinderTest) if Object.const_defined?(:ImpulseAboutFinderTest)
    end

    it "should have a pc downloads app label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:pc_downloads_app_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-pc-downloads-app-label").ordered.and_return("ats-pc-downloads-app-label")
        mocked_h1.should_receive(:className).with("ats-pc-downloads-app-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :pc_downloads_app_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.pc_downloads_app_label.should == mocked_tooltag
    end

    it "should have a download now button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:download_now_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-download-now-button").ordered.and_return("ats-download-now-button")
        mocked_a.should_receive(:className).with("ats-download-now-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :download_now_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.download_now_button.should == mocked_tooltag
    end

end
