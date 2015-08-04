ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseSelector do

    before(:each) do
        @browser = double("browser")
        @formatted_method = double("formatted_method")
    end

    it "should be able to set the value" do
        tag = double("tag")
        @sel = ImpulseSelector.new(tag, @browser)

        @sel.should_receive(:format_method).with(:value=).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with("\tSet: #{@formatted_method} stuff").ordered
        tag.should_receive(:option).with("stuff").ordered.and_return(tag)
        tag.should_receive(:selected=).with(true).ordered.and_return(tag)

        @sel.value = "stuff"
    end

    it "should be able to get the value" do
        tag = double("tag")
        @sel = ImpulseSelector.new(tag, @browser)

        @sel.should_receive(:format_method).with(:value).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with("\tAction: #{@formatted_method}").ordered
        tag.should_receive(:option).ordered.and_return(tag)
        tag.should_receive(:selected).with(true).ordered.and_return(tag)
        tag.should_receive(:innerText).ordered.and_return(tag)
        tag.should_receive(:strip).ordered.and_return("stuff")

        @sel.value.should == "stuff"
    end
end
