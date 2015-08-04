ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseHTMLFinder do

    before(:all) do
        class ImpulseHTMLFinderTest
            include ImpulseHTMLFinder
        end

        @browser = ImpulseHTMLFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseHTMLFinderTest) if Object.const_defined?(:ImpulseHTMLFinderTest)
    end

    it "should have a impulse logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:impulse_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-header-logo-link").ordered.and_return("ats-gamestop-header-logo-link")
        mocked_a.should_receive(:className).with("ats-gamestop-header-logo-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :impulse_logo_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.impulse_logo_link.should == mocked_tooltag
    end
end
