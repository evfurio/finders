ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseSupportFinder do

    before(:all) do
        class ImpulseSupportFinderTest
            include ImpulseSupportFinder
        end

        @browser = ImpulseSupportFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseSupportFinderTest) if Object.const_defined?(:ImpulseSupportFinderTest)
    end

    it "should have a support label" do
        mocked_tooltag = double("ToolTag")
        mocked_h2 = double("h2")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:support_label).ordered

        @browser.should_receive(:h2).ordered.and_return(mocked_h2)
        @browser.should_receive(:create_ats_regex_string).with("ats-support-label").ordered.and_return("ats-support-label")
        mocked_h2.should_receive(:className).with("ats-support-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :support_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.support_label.should == mocked_tooltag
    end
end
