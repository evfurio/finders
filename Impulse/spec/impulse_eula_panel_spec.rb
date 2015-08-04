ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseEulaPanel do
    before(:each) do
        @mocked_browser = double("browser")
        @eula = ImpulseEulaPanel.allocate
        @mocked_tag = double("ToolTag")
        @eula.instance_variable_set(:@tag, @mocked_tag)
        @eula.instance_variable_set(:@browser, @mocked_browser)
    end

    it "should return accept link" do
        mocked_method = double("__method__")
        @eula.should_receive(:format_method).with(:accept_link).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @eula.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @eula.should_receive(:create_ats_regex_string).with("ats-eula-accept-link").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @eula.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @eula.accept_link.should == mocked_tooltag
    end

    it "should return eula panel" do
        mocked_method = double("__method__")
        @eula.should_receive(:format_method).with(:close_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_div = double("div")
        @eula.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats tag")
        @eula.should_receive(:create_ats_regex_string).with("ats-eula-close-link").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @eula.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @eula.close_button.should == mocked_tooltag
    end
end
